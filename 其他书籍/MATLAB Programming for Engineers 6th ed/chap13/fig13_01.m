x = 0:pi/10:2*pi;
sin_x = sin(x);
cos_x = cos(x);
plot(x,sin_x,'b-');
hold on;
plot(x,cos_x,'r-');
hold off;
title('\bfPlot of sin(x) and cos(x)');
legend('sin(x)','cos(x)');
