figure(1)
x = 0:0.05:2;
y1 = exp(x);
plot(x,y1);
title(' exp(x)');
grid on;

figure(2)
y2 = exp(-x);
plot (x,y2);
title(' exp(-x)');
grid on;
