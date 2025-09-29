x = 0:1:10;
y = x.^2 - 10.*x + 15;
figure(2);
plot(x,y);
title ('Plot of y = x.^2 - 10.*x + 15');
xlabel ('x');
ylabel ('y');
grid on;
