%  Script file: lsqfit3.m
%
%  Purpose:
%    To perform a least-squares fit of an input data set
%    to a second, third, and fourth-order using polyfit, 
%    and plot the resulting fitted lines.  The input data 
%    for this fit is measured magnetization data from
%    a generator.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/28/18    S. J. Chapman        Original code
%
% Define variables:
%   if1         -- Array of field current values
%   p2          -- Second order polynomial coefficients
%   p3          -- Third order polynomial coefficients
%   p4          -- Fourth order polynomial coefficients
%   vout        -- Array of measured voltages
%   x           -- Array of x values
%   x1          -- Array of x values to evaluate the line at
%   y           -- Array of y values
%   y2          -- Array of evaluated results for p2
%   y3          -- Array of evaluated results for p3
%   y4          -- Array of evaluated results for p4

% Read the input data
[if1, vout] = textread('magnetization_curve.dat','%f %f');

% Perform the fits
p2 = polyfit(if1,vout,2);
p3 = polyfit(if1,vout,3);
p4 = polyfit(if1,vout,4);

% Get several points on each line for plotting
x1 = min(if1):0.1:max(if1);
y2 = polyval(p2,x1);
y3 = polyval(p3,x1);
y4 = polyval(p4,x1);

% Plot the data points as blue crosses with no 
% connecting lines.
figure(1);
plot(if1,vout,'x','Linewidth',1);
hold on;

% Plot the three fitted lines
plot(x1,y2,'r--','LineWidth',2);
plot(x1,y3,'m--','LineWidth',2);
plot(x1,y4,'k-.','LineWidth',2);

% Add a title and legend
title ('\bfLeast-Squares Fit');
xlabel('\bf\itx');
ylabel('\bf\ity');
legend('Input data','2nd-order fit','3rd-order fit','4th-order fit');
grid on
hold off;