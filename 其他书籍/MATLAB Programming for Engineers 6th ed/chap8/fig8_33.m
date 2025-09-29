x = 0:0.05*pi:2*pi;
y1 = sin(x);
y2 = cos(x);
y3 = sin(2*x);
plot(x,y1);
hold on;
plot(x,y2);
plot(x,y3);
hold off;
