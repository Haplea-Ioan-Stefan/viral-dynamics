% construieste dataset din date dinamica COVID
% p - de la sputum, pulm.; n - de la swab, nose

% la 4 sunt NaN in interior
% la 6 sunt NaN in interior la p, la n trebe prelungit cu un zero



% timp 2:28
% val 0:10

clear
clc

p = nan(9, 28); %9 pacienti, timp
n = nan(9, 28);

load a_sputum
ast = a_sputum(:,1);
as = a_sputum(:,2);
t = round(ast);
x = as;
subplot(331);
plot(t, x, 'r.', 'MarkerSize', 15); hold on; plot(t,x, 'r');
p(1, t) = as;

load a_swab
ast = a_swab(:,1);
as = a_swab(:,2);
t = round(ast);
x = as;
subplot(331);
plot(t, x, 'g.', 'MarkerSize', 15); hold on; plot(t,x, 'g'); grid on; grid minor; hold off
n(1, t) = as;

% ----------------------------------------------
ind = 2;
load b_sputum
ast = b_sputum(:,1); 
as = b_sputum(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(332);
plot(t, x, 'r.', 'MarkerSize', 15); hold on; plot(t,x, 'r');
p(ind, t) = as;

load b_swab
ast = b_swab(:,1); 
as = b_swab(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(332);
plot(t, x, 'g.', 'MarkerSize', 15); hold on; plot(t,x, 'g'); grid on; grid minor; hold off
n(ind, t) = as;

% ----------------------------------------------
ind = 3;
load c_sputum
ast = c_sputum(:,1); 
as = c_sputum(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(333);
plot(t, x, 'r.', 'MarkerSize', 15); hold on; plot(t,x, 'r');
p(ind, t) = as;

load c_swab
ast = c_swab(:,1); 
as = c_swab(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(333);
plot(t, x, 'g.', 'MarkerSize', 15); hold on; plot(t,x, 'g'); grid on; grid minor; hold off
n(ind, t) = as;

% ----------------------------------------------
ind = 4;
load d_sputum
ast = d_sputum(:,1); 
as = d_sputum(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(3, 3, ind);
plot(t, x, 'r.', 'MarkerSize', 15); hold on; plot(t,x, 'r');
p(ind, t) = as;

load d_swab
ast = d_swab(:,1); 
as = d_swab(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(3, 3, ind);
plot(t, x, 'g.', 'MarkerSize', 15); hold on; plot(t,x, 'g'); grid on; grid minor; hold off
n(ind, t) = as;
ind
[p(ind,:)' n(ind,:)']


% ----------------------------------------------
ind = 5;
load e_sputum
ast = e_sputum(:,1); 
as = e_sputum(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(3, 3, ind);
plot(t, x, 'r.', 'MarkerSize', 15); hold on; plot(t,x, 'r');
p(ind, t) = as;

load e_swab
ast = e_swab(:,1); 
as = e_swab(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(3, 3, ind);
plot(t, x, 'g.', 'MarkerSize', 15); hold on; plot(t,x, 'g'); grid on; grid minor; hold off
n(ind, t) = as;
ind
[p(ind,:)' n(ind,:)']

% ----------------------------------------------
ind = 6;
load f_sputum
ast = f_sputum(:,1); 
as = f_sputum(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(3, 3, ind);
plot(t, x, 'r.', 'MarkerSize', 15); hold on; plot(t,x, 'r');
p(ind, t) = as;

load f_swab
ast = f_swab(:,1); 
as = f_swab(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(3, 3, ind);
plot(t, x, 'g.', 'MarkerSize', 15); hold on; plot(t,x, 'g'); grid on; grid minor; hold off
n(ind, t) = as;
ind
v = 1:28;
[v' p(ind,:)' n(ind,:)']


% ----------------------------------------------
ind = 7;
load g_sputum
ast = g_sputum(:,1); 
as = g_sputum(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(3, 3, ind);
plot(t, x, 'r.', 'MarkerSize', 15); hold on; plot(t,x, 'r');
p(ind, t) = as;

load g_swab
ast = g_swab(:,1); 
as = g_swab(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(3, 3, ind);
plot(t, x, 'g.', 'MarkerSize', 15); hold on; plot(t,x, 'g'); grid on; grid minor; hold off
n(ind, t) = as;
ind
v = 1:28;
[v' p(ind,:)' n(ind,:)']


% ----------------------------------------------
ind = 8;
load h_sputum
ast = h_sputum(:,1); 
as = h_sputum(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(3, 3, ind);
plot(t, x, 'r.', 'MarkerSize', 15); hold on; plot(t,x, 'r');
p(ind, t) = as;

load h_swab
ast = h_swab(:,1); 
as = h_swab(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(3, 3, ind);
plot(t, x, 'g.', 'MarkerSize', 15); hold on; plot(t,x, 'g'); grid on; grid minor; hold off
n(ind, t) = as;
ind
v = 1:28;
[v' p(ind,:)' n(ind,:)']


% ----------------------------------------------
ind = 9;
load i_sputum
ast = i_sputum(:,1); 
as = i_sputum(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(3, 3, ind);
plot(t, x, 'r.', 'MarkerSize', 15); hold on; plot(t,x, 'r');
p(ind, t) = as;

load i_swab
ast = i_swab(:,1); 
as = i_swab(:,2); as(as<0) = 0;
t = round(ast);
x = as;
subplot(3, 3, ind);
plot(t, x, 'g.', 'MarkerSize', 15); hold on; plot(t,x, 'g'); grid on; grid minor; hold off
n(ind, t) = as;
ind
v = 1:28;
[v' p(ind,:)' n(ind,:)']




% ======== completari date lipsa, NaN in interior sau lungimi diferite =======
% ======== pot fi scoase ca sa ramana date "pure" ========
ind = 8;   % nr. pacientului
ind
v = 1:28;
[v' p(ind,:)' n(ind,:)']  % debug

poz = 4;
p(3, poz) = (p(3, poz-1) + p(3, poz+1)) / 2;
n(3, poz) = (n(3, poz-1) + n(3, poz+1)) / 2;

indd = 4; % pacientul
poz = 5; % timpul
p(indd, poz) = (p(indd, poz-1) + p(indd, poz+1)) / 2;

indd = 5; % pacientul
poz = 5; % timpul
p(indd, poz) = (p(indd, poz-1) + p(indd, poz+1)) / 2;

indd = 6; % pacientul
poz = 12; % timpul
p(indd, poz) = (p(indd, poz-1) + p(indd, poz+1)) / 2;
poz = 15; % timpul
p(indd, poz) = (p(indd, poz-1) + p(indd, poz+1)) / 2;
poz = 17; % timpul
p(indd, poz) = (p(indd, poz-1) + p(indd, poz+1)) / 2;
poz = 22;
n(indd, poz) = 0;

indd = 7; % pacientul
poz = 5; % timpul
p(indd, poz) = (p(indd, poz-1) + p(indd, poz+1)) / 2;
poz = 9;  % ---------- cand lipsesc doua, poz pe prima gaura
pas = (p(indd, poz+2) - p(indd, poz-1)) / 3; 
p(indd, poz) = p(indd, poz-1) + pas;
p(indd, poz+1) = p(indd, poz-1) + 2*pas;
poz = 15;  % ---------- cand lipsesc doua, poz pe prima gaura
pas = (p(indd, poz+2) - p(indd, poz-1)) / 3; 
p(indd, poz) = p(indd, poz-1) + pas;
p(indd, poz+1) = p(indd, poz-1) + 2*pas;
poz = 5;  % ---------- cand lipsesc doua, poz pe prima gaura
pas = (n(indd, poz+2) - n(indd, poz-1)) / 3; 
n(indd, poz) = n(indd, poz-1) + pas;
n(indd, poz+1) = n(indd, poz-1) + 2*pas;

indd = 8; % pacientul
poz = 4; % timpul
n(indd, poz) = (n(indd, poz-1) + n(indd, poz+1)) / 2;

% =========================== sfarsit completari ==============================


% nanmean(), nanstd()

pm = nanmean(p);
nm = nanmean(n);
figure;
plot(pm, 'r.', 'MarkerSize', 15); hold on; plot(pm, 'r'); grid on;
plot(nm, 'g.', 'MarkerSize', 15); hold on; plot(nm, 'g'); grid on; hold off;


figure;
plot(p', 'r.', 'MarkerSize', 15); hold on; plot(p', 'r'); grid on;
plot(pm, 'r.', 'MarkerSize', 45); hold on; plot(pm, 'r', 'Linewidth', 3); grid on; 
xlabel('Days');
ylabel('log(viral titer)');
title('In sputum');

%figure;
plot(n', 'g.', 'MarkerSize', 15); hold on; plot(n', 'g'); grid on;
plot(nm, 'g.', 'MarkerSize', 45); hold on; plot(nm, 'g', 'Linewidth', 3); grid on; hold off;
xlabel('Days');
ylabel('log10( viral ARN copies / ml or swab )');
title('In swab');


d = p - n;
dm = nanmean(d);
figure;
plot(d', 'b.', 'MarkerSize', 15); hold on; plot(d', 'b'); grid on;
plot(pm, 'b.', 'MarkerSize', 45); hold on; plot(pm, 'b', 'Linewidth', 3); grid on; 
title('Difference (sputum - swab)');



% =======================
save('covid_data.mat', 'p', 'n');

