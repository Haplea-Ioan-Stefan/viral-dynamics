% Model simplu target limited cell model, within host viral dynamics
% pentru influenza A, art. 

% A review of mathemtatical models of influenza A
% infections within a host or cell culture: lessons learded and challenges
% ahead, Beauchemin C, Handel A, BMC public Health, 2011
% modelul din fig.2, [T, E, I, V]

clear;
clc;

% for easier indexing the y and dydt vectors within viral_function()
global T;
global E;
global I;
global V;

T = 1;
E = 2;
I = 3;
V = 4;


% ODE system parameters
global beta;
global kappa;
global delta;
global p;
global c;

% original
beta = 3.2e-5; % in units of [V]*day^(-1)
% este o bifurcare pentru beta pe la 7e-6, clar la 3e-6, 
% se duce virusul, raman celule normale; trebe tfinal cam 20 de zile
%beta = 3e-6;

kappa = 4.0; % in units of day^(-1)
delta = 5.2; % in units of day^(-1)


% original
p = 4.6e-2; % in units of [V]*day(-1)
%p = 1.0e-3;
% este o bifurcatie pentru p pe la 1.0e-2, we vede bine la 4.6e-3
% tot ca se duce virusul si raman celul bune
% pentru p 1.0e-3, virusul nici nu se mai inmulteste deloc !!

c = 5.2; % in units of day^(-1)


% time vector
t0 = 0;     % onset time of infection
% original
tfinal = 7; % lenght of simulation, in days (7 days is sufficient for influenza course)
tstep = .02; % time scale resolution, in days
ttime = t0:tstep:tfinal;

% initial conditions
y0(T) = 4e+8; % estimate of total number of susceptible epithelial cells in [upper] respiratory tract)
y0(E) = 0;
y0(I) = 0;
y0(V) = 0.75;


%optiuni = odeset('OutputFcn',@odetpbar); % progress bar de la https://www.mathworks.com/matlabcentral/fileexchange/28509-text-progress-bar-for-odes
%[t,y] = ode23(@viral_func, timp, y0, optiuni);
[t,y] = ode23(@viral_function, ttime, y0);

vv = y(:, V);

% % ------------ plot -----------------
% % scaling factor for plotting viral titres
% scale_factor = 0.9 * max(y(:,T)) / max(y(:,V));
% 
% wwidth = 2;
% yg = y;
% yg(:,V) = yg(:,V) * scale_factor;
% plot(t, yg, 'LineWidth', wwidth);
% %semilogy(t, yg, 'LineWidth', wwidth);
% grid on;
% legend('T', 'E', 'I', 'V');



% ------------ plot cu virusul in log, ca asa sunt datele ---------------
ylogv = y;
ylogv(:, V) = log10(ylogv(:, V));
scale_factor = 0.9 * max(ylogv(:,T)) / max(ylogv(:,V));

wwidth = 2;
ylogv(:,V) = ylogv(:,V) * scale_factor;
plot(t, ylogv, 'LineWidth', wwidth);
%semilogy(t, yg, 'LineWidth', wwidth);
grid on;
legend('T', 'E', 'I', 'log10(V)');

