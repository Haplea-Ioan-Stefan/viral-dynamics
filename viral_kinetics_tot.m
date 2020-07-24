function [t,y] = viral_kinetics_tot(b, ttime)

    global T;
    global E;
    global I;
    global V;

    global beta;
    global kappa;
    global delta;
    global p;
    global c;


    beta = b(1);
    kappa = b(2);
    delta = b(3);
    p = b(4);
    c = b(5);

    y0(T) = 4e+8;
    y0(E) = 0;
    y0(I) = 0;
    y0(V) = 0.75;

    [t,y] = ode23(@viral_function, ttime, y0);  % cu ode45 sta prea mult la lsqcurvefit
end

