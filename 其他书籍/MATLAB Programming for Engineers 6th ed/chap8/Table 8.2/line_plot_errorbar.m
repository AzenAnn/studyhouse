figure(1);
x = 0:0.2:100;
x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
err = 8*ones(size(y));
errorbar(x,y,err,'LineWidth',2);
grid on;