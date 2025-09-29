% Create a sparsely sampled sine function
x = 1:8;
y = sin(x);

% Now do spline fit to this function
xx = 1:.25:8;
yy = spline(x,y,xx);
pp = spline(x,y);

% Plot the original points and the spline fit
figure(1)
plot(x,y,'o');
hold on;
%plot(xx,yy,'m-','LineWidth',2)

% Sample the polynomials used around points 3, 4, and 5
y1 = polyval(pp.coefs(3,:),xx-3);
y2 = polyval(pp.coefs(4,:),xx-4);
y3 = polyval(pp.coefs(5,:),xx-5);

% Display these piecewise polynomials
plot(xx,y1,'b--');
plot(xx,y2,'r-');
plot(xx,y3,'k-.');
%legend('Original points','Spline fit','Cubic fit using (2,3,4)','Cubic fit using (3,4,5)','Cubic fit using (4,5,6)');
legend('Original points','Cubic fit using (2,3,4)','Cubic fit using (3,4,5)','Cubic fit using (4,5,6)');
xlabel('\bfx');
ylabel('\bfy');
title('\bfSpline fit to a sparse data from a sine');
set(gca,'YLim',[-1.1 4]);
hold off;
