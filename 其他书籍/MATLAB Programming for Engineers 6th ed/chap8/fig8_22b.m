figure(1);

arr1 = [1 2 3; 1 2 3; 1 2 3; 1 2 3];
arr2 = [1 1 1; 2 2 2; 3 3 3; 4 4 4];
arr3 = sqrt(arr1.^2 + arr2.^2);
surf(arr1,arr2,arr3);
shading interp;