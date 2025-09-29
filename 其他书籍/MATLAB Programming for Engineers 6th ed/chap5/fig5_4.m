x = [1.1 2.2 3.3 4.4 5.5 6.6 7.7];
y = [1.01 2.30 3.05 4.28 5.75 6.48 7.84];

slope = 1.024;
yint = -0.120;

y2 = slope .* x + yint;

figure(1)
plot(x,y,'ok');
hold on;
plot(x,y2,'b-','LineWidth',2);
title('\bfLeast-Squares Fit');
xlabel('\bf\itx');
ylabel('\bf\ity');
legend('Input Data','Fitted Line');
grid on;
