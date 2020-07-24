% functie pentru integrare
function dydt = viral_function(t,y)
    
% y1 = T = number of target cells
% y2 = E = number of exposed cells
% y3 = I = number of infected cells
% y4 = V = viral titre, in units of TCID50/ml of biofluid wash

global T;
global E;
global I;
global V;

global beta;
global kappa;
global delta;
global p;
global c;

dydt = zeros(4, 1);
dydt(T) = - beta * y(T) * y(V);
dydt(E) =   beta * y(T) * y(V) - kappa * y(E);
dydt(I) =   kappa * y(E) - delta * y(I);
dydt(V) =   p * y(I) - c * y(V);

end

