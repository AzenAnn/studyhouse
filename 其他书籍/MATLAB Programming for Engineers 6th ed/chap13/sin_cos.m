x = 0:pi/10:2*pi;
sin_x = sin(x);
cos_x = cos(x);
h1 = plot(x,sin_x,'b-');
hold on;
h2 = plot(x,cos_x,'r-');
hold off;
ht = title('\bfPlot of sin(x) and cos(x)');
hl = legend('sin(x)','cos(x)');
