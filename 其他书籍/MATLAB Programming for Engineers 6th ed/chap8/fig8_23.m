% Get x and y values to calculate
x = -4:0.1:4;
y = -3:0.1:3;

% Pre-allocate the arrays for speed
arr1 = zeros(length(y),length(x));
arr2 = zeros(length(y),length(x));
arr3 = zeros(length(y),length(x));

% Populate the arrs
for jj = 1:length(x)
   for ii = 1:length(y)
      arr1(ii,jj) = x(jj);  % x value in columns
      arr2(ii,jj) = y(ii);  % y value in rows
      arr3(ii,jj) = exp(-0.5*(arr1(ii,jj)^2+0.5*(arr1(ii,jj)-arr2(ii,jj))^2));
   end
end

% Plot the data
figure(1);
mesh(arr1, arr2, arr3);
title('\bfMesh Plot');
xlabel('\bfx');
ylabel('\bfy');
zlabel('\bfz');
