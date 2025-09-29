x = [-3:0.05:3];
y = x.^4 + 2*x.^3 + x.^2 - 8*x -20;
plot(x,y)
grid on;
xlabel('\bf\itx');
ylabel('\bf\ity');
title('\bfPlot of Polynomial');
