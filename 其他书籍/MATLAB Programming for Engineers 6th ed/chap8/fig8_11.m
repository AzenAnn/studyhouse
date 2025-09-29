t = 0:0.5:10;
y = cos(t);

figure(1);
plot(t,y,'bo','LineWidth',2);
title('\bfPlot of Points');
xlabel('\bfx');
ylabel('\bfy');
zlabel('\bftime');
grid on;

figure(2);
stairs(t,y,'b','LineWidth',2);
title('\bfStair Plot');
xlabel('\bfx');
ylabel('\bfy');
zlabel('\bftime');
grid on;

figure(3);
stem(t,y,'LineWidth',2);
title('\bfStem Plot');
xlabel('\bfx');
ylabel('\bfy');
zlabel('\bftime');
grid on;
