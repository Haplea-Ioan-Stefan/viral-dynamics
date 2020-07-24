% face fit cu lsqcurvefit pentru date de cinetica virus Influenza A

% help +++++++++++
%https://www.mathworks.com/matlabcentral/answers/43439-monod-kinetics-and-curve-fitting#comment_89455
% ---- beta si restul - sa fie indecsi pentru vectorul b(), nu valori

% explic. eroare lsqcurvefit
%https://www.mathworks.com/matlabcentral/answers/116787-error-using-lsqcurvefit-line-248-function-value-and-ydata-sizes-are-not-equal


% date cu niveluri virusi pacienti influenza A, 

% ---- modeled in ------
% Baccam P, Beauchemin C, Macken CA, Hayden FG, Perelson AS. 
% Kinetics of Influenza A Virus Infection in Humans. 
% Journal of Virology. 2006 Aug 1;80(15):7590–9. 

% Results of nasal washes taken daily from six human subjects (volunteers)
% inoculated with 104.2 TCID50 
% of cloned wild-type influenza A/Hong Kong/123/77 (H1N1)a




% each row coresponds to a patient
% each column a day since inoculation (7 days of follow-up)
% data in log10 TCID50/ml of nazal wash
% values of 0 (zero) denote <=0.5 

clear
clf
viral_caller  % pentru variabile


% virus Influenza in TCID50, o data pe zi, timp de o sapt.
a = [   2.0	5.5	4.0	5.5	3.0	0   0;
        1.0	6.0	3.0	1.5	3.5	1.3	0;
        2.5	5.0	5.0	3.0	5.5	3.5	0;
        3.5	5.5	6.5	5.5	3.5	4.0	0;
        2.5	3.0	6.5	6.5	2.0	0.8	0;
        4.0	5.0	5.5	7.5	5.5	1.3	0   ]

w = a;
save('influenza.mat', 'w');
   
    
% plot(mean(a));
% plot(a');
% for i=1:6
%     subplot(3,2,i);
%     plot(a(i,:))
% end


% b(1) = beta;
% b(2) = kappa;
% b(3)= delta;
% b(4) = p;
% b(5) = c;
% b = zeros(5,1);
% vv = viral_kinetics(b, ttime);

%b0 = rand(5,1);
b0 = [beta, kappa, delta, p, c];
pacient = 1; % index of patient to fit
tic
[b,Rsdnrm,Rsd,ExFlg,OptmInfo,Lmda,Jmat] = lsqcurvefit(@viral_kinetics,b0,1:7',a(pacient,:)');
toc
b0
b


[t, y] = viral_kinetics_tot(b, ttime);

ylogv = y;
ylogv(:, V) = log10(ylogv(:, V));
scale_factor = 0.9 * max(ylogv(:,T)) / max(ylogv(:,V));

wwidth = 2;
ylogv(:,V) = ylogv(:,V) * scale_factor;
plot(t, ylogv, 'LineWidth', wwidth);
%semilogy(t, yg, 'LineWidth', wwidth);
grid on;
legend('T', 'E', 'I', 'log10(V)');
hold on
plot(a(pacient, :) * scale_factor, 'b.', 'MarkerSize', 25);
hold off
