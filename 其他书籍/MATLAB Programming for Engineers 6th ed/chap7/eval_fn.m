

zero = fzero('exp(x)-2',[0 1]);
x = linspace(0,1);
y = exp(x) - 2;

figure(1)
plot(x,y,'LineWidth',2);
title('\bfRoot of \itf(x)\rm\bf = \ite^{x}\rm\bf - 2');
xlabel('\bfx');
ylabel('\bf\itf(x)');
grid on;

hold on;
x1 = [0.6931 0.6931];
y1 = get(gca,'Ylim');
plot(x1,y1,'r--','LineWidth',2);
hold off;

legend('Function','Location of root','Location','NorthWest');
