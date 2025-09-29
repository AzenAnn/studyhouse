figure(1);
x = linspace(0,4*pi,200);
y = sin(x) + 0.2*randn(size(x));
c = linspace(0,1,200);

scatter(x,y,[],c,'LineWidth',2);
title('\bfVariable Color Scatter Plot');
xlabel('\bfx');
ylabel('\bfy');
