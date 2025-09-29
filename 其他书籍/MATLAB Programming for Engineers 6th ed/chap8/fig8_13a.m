figure(1);
x = linspace(0,4*pi,200);
y = sin(x) + 0.2*randn(size(x));

scatter(x,y);
title('\bfDefault Scatter Plot');
xlabel('\bfx');
ylabel('\bfy');
