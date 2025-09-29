figure(1);
theta = pi/4:pi/4:2*pi;
rho = [19 6 12 18 16 11 15 15];
sz = [600 1500 2000 300 1500 300 600 4000];
c = [1 2 3 2 1 1 3 1];
polarscatter(theta,rho,sz,c,'filled');