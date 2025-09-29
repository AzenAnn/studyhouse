figure(1);
t = linspace(0,4*pi,200);
x = 2*cos(t) + 0.1*randn(size(t));
y = 2*sin(t) + 0.1*randn(size(t));
z = 0.1*randn(size(t));

scatter3(x,y,z);
title('\bfSample Scatter3 Plot');
xlabel('\bfx');
ylabel('\bfy');
zlabel('\bfz');
