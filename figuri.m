% figuri cu datele de covid - neamt ca Cercel


clear
clc
load covid_data

pp = p(:);
nn = n(:);
plot(pp, nn, '.', 'MarkerSize', 15');
axis square
grid on
xlabel('Sputum');
ylabel('Swab');
lsline;

