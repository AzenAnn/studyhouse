figure(1);
x = -2:0.25:2;
[X,Y] = meshgrid(x);
Z = X.*exp(-X.^2 - Y.^2);
h = contourf(X,Y,Z,30);

