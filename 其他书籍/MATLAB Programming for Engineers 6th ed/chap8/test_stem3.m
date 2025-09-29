t = 0:pi/20:2*pi;
x = cos(t);
y = sin(t);
z = abs(x - y);

figure(1);
stem3(x,y,z,'bo','LineWidth',2);
title('\bfStem3 Plot');
xlabel('\bfx');
ylabel('\bfy');
zlabel('\bfz');
