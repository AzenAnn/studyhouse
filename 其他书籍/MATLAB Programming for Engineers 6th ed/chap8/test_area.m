x = 0:pi/20:4*pi;
y = sin(x);

figure(1);
area(x,y);
title('\bfArea Plot');
xlabel('\bfx');
ylabel('\bfy');
