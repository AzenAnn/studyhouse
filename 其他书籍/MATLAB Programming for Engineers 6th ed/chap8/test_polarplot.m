figure(1);
theta = 0:0.01:2*pi;
rho = sin(2*theta).*cos(2*theta);
polarplot(theta,rho,'Color','r','LineStyle','--','LineWidth',3);
title('\bfPlot of \rho = sin(2*\theta)* cos(2*\theta)');
