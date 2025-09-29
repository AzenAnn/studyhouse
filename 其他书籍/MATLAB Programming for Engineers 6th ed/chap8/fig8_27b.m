[x,y] = meshgrid(-4:0.1:4,-4:0.1:4);
z = sqrt(x.^2 + (y/2).^2);
surf(x, y, z);
title('\bfSurf Plot');
xlabel('\bfx');
ylabel('\bfy');
zlabel('\bfz');
view(0,90)