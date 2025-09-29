figure(1);
x = linspace(-5,5,60);
y = cos(x);
z = x.^2;
stem3(x,y,z,'LineWidth',2);
view(-8,30);
