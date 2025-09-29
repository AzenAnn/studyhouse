figure(1)
subplot(2,1,1)
x = -pi:pi/20:pi;
y = sin(x);
plot(x,y);
title('Subplot 1 title');
subplot(2,1,2)
x = -pi:pi/20:pi;
y = cos(x);
plot(x,y);
title('Subplot 2 title');
