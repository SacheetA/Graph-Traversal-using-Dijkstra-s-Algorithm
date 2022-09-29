function P = eefpos(L1, L2, phi_1, phi_2)
%Gives pendulum end effector coordinates given lengths L1, L2 and angles
%Phi1, Phi2
X=0;
Y=0;

X(2) = X(1) + L1 * sind(phi_1);
Y(2) = Y(1) - L1 * cosd(phi_1);

X(3) = X(2) + L2 * sind(phi_2);
Y(3) = Y(2) - L2 * cosd(phi_2);
P=[X(3) Y(3)];

end



