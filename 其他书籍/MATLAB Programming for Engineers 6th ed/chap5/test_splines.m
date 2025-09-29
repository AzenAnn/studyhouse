%
%  Purpose:
%    To perform a spline fit of sampled data set, and to  
%    compare the quality of the fits with the original  
%    data set.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    04/19/18    S. J. Chapman        Original code
%
% Define variables:
%   x           -- Array of x values in orig sample
%   xx          -- Array of x values to interpolate data
%   y           -- Array of samples
%   yerr        -- Error between original and fitted fn
%   yy          -- Interpolated data points

% Sample the original function
x = (-2:0.5:2)*pi;
y = cos(x);

% Now do the unconstrained spline fit
pp = spline(x,y);
xx = (-2:0.01:2)*pi;
yy = ppval(pp,xx);

% Plot the original function and the resulting fit;
figure(1);
plot(xx,cos(xx),'b-','Linewidth',2);
hold on;
plot(x,y,'bo');
plot(xx,yy,'k--','Linewidth',2);
title ('\bfSpline fit');
xlabel('\bf\itx');
ylabel('\bf\ity');
legend('Original function','Sample points','Fitted line');
grid on;
hold off;

% Compare the fitted function to the original
yerr = cos(xx) - yy;

% Plot the error vs x
figure(2);
plot(xx,yerr,'b-','Linewidth',2);
title ('\bfError between original function and fitted line');
xlabel('\bf\itx');
ylabel('\bf\ity');
set(gca,'YLim',[-1 1]);
grid on;

