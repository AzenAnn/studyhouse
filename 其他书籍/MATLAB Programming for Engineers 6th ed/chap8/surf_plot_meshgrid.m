
[array1,array2] = meshgrid(-4:0.1:4,-3:0.1:3);
array3 = exp(-0.5*(array1.^2+0.5*(array1-array2).^2));
figure(1);
surf(array1, array2, array3);
title('\bfSurf Plot');
xlabel('\bfx');
ylabel('\bfy');
zlabel('\bfz');
