% Create a sparsely sampled sine function
x = 1:8;
y = sin(x);

% Now do spline fit to this function
pp = spline(x,y);

% Now interpolate using the spline fits
xx = 1:.25:8;
yy = ppval(pp,xx);

% Plot the original points and the spline fit
figure(1)
plot(x,y,'o');
hold on;
plot(xx,yy,'m-','LineWidth',2)
xlabel('\bfx');
ylabel('\bfy');
title('\bfSpline fit to a sparse data from a sine');
set(gca,'YLim',[-1.1 1.1]);
hold off;
