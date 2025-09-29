figure(1);

[arr1,arr2] = meshgrid(-4:0.1:4,-3:0.1:3);
arr3 = exp(-0.5*(arr1.^2+0.5*(arr1-arr2).^2));
mesh(arr1, arr2, arr3);
title('\bfMesh Plot');
xlabel('\bfx');
ylabel('\bfy');
zlabel('\bfz');
