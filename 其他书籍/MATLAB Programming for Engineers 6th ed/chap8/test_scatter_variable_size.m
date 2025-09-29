figure(1);
x = linspace(0,4*pi,200);
y = sin(x) + 0.2*randn(size(x));
sz = linspace(1,50,200);

scatter(x,y,sz);
title('\bfVariable Size Scatter Plot');
xlabel('\bfx');
ylabel('\bfy');
