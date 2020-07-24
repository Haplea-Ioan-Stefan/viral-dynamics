% comparatie COVID, SARS si Influenza

% aliniere in timp - since symptom onset, la influenza de la inoculare
% unitati de masura - log(ARN)-ml sput. ml lavaj rinofaring, swab, TCID50


clear
clc

load covid_data
load sars_out
load influenza

pm = nanmean(p);
nm = nanmean(n);
am = mean(a); % SARS
wm = mean(w); % Influenza A

ti = 0:6; % timp pentru Influenza, presupunem ca simptomele incep la 24 ore dupa expunere

figure; % ---- medii si toate individ.
textsiz = 14;

plot(ti, w', 'b.', 'MarkerSize', 15); hold on; plot(ti, w', 'b'); grid on;
plot(ti, wm, 'b.', 'MarkerSize', 45); hold on; plot(ti, wm, 'b', 'Linewidth', 3); grid on;

plot(t, a', 'm.', 'MarkerSize', 15); hold on; plot(t, a', 'm'); grid on;
plot(t, am, 'm.', 'MarkerSize', 45); hold on; plot(t, am, 'm', 'Linewidth', 3); grid on;

plot(p', 'r.', 'MarkerSize', 15); hold on; plot(p', 'r'); grid on;
plot(pm, 'r.', 'MarkerSize', 45); hold on; plot(pm, 'r', 'Linewidth', 3); grid on; 

plot(n', 'g.', 'MarkerSize', 15); hold on; plot(n', 'g'); grid on;
plot(nm, 'g.', 'MarkerSize', 45); hold on; plot(nm, 'g', 'Linewidth', 3); grid on;
ylabel({'log10( viral ARN copies / ml or swab )', 'or log10( TCID50 / ml )'}, 'FontSize', textsiz);
xlabel('Days since onset of symptoms', 'FontSize', textsiz);
title('Comparison of viral dynamics', 'FontSize', textsiz + 2);
xlim([-2 30]);
set(gca, 'XTick', 0:2:30);


figure % ----------- numai mediile -------------- 
textsiz = 14;
plot(ti, wm, 'b.', 'MarkerSize', 45); hold on; %hold on; plot(ti, wm, 'b', 'Linewidth', 3); grid on;
plot(t, am, 'm.', 'MarkerSize', 45); %hold on; plot(t, am, 'm', 'Linewidth', 3); grid on;
plot(pm, 'r.', 'MarkerSize', 45); %hold on; plot(pm, 'r', 'Linewidth', 3); grid on; 
plot(nm, 'g.', 'MarkerSize', 45); %hold on; plot(nm, 'g', 'Linewidth', 3); grid on;
legend({'Influenza', 'SARS', 'SARS-CoV2 sputum', 'SARS-CoV2 nasal'}, 'FontSize', textsiz);
plot(ti, wm, 'b', 'Linewidth', 3); grid on;
plot(t, am, 'm', 'Linewidth', 3); grid on;
plot(pm, 'r', 'Linewidth', 3); grid on; 
plot(nm, 'g', 'Linewidth', 3); grid on;
ylabel({'log10( viral ARN copies / ml or swab )', 'or log10( TCID50 / ml )'}, 'FontSize', textsiz);
xlabel('Days since onset of symptoms', 'FontSize', textsiz);
title('Comparison of viral dynamics', 'FontSize', textsiz + 2);
xlim([-2 30]);
set(gca, 'XTick', 0:2:30);

