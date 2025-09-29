figure(1);
[x,y] = meshgrid(-3:1/8:3);
z = peaks(x,y);
surfl(X,Y,Z);
shading interp;
