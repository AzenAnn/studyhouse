%
%  Purpose:
%    To perform a least-squares fit of an input data set
%    to a straight line using polyfit, and print out the 
%    resulting slope and intercept values.  The input data 
%    for this fit comes from a user-specified input data file.
%
%  Record of revisions:
%      Date       Engineer          Description of change
%      ====       ==========          =====================
%    01/28/18    S. J. Chapman        Original code
%
% Define variables:
%   ii          -- Loop index
%   n_points    -- Number in input [x y] points
%   slope       -- Slope of the line
%   temp        -- Variable to read user input
%   x           -- Array of x values
%   x1          -- Array of x values to evaluate the line at
%   y           -- Array of y values
%   y1          -- Array of evaluated results
%   y_int       -- y-axis intercept of the line

disp('This program performs a least-squares fit of an ');
disp('input data set to a straight line.');
n_points = input('Enter the number of input [x y] points: ');

% Allocate the input data arrays
x = zeros(1,n_points);
y = zeros(1,n_points);

% Read the input data
for ii = 1:n_points
   temp = input('Enter [x y] pair: ');
   x(ii) = temp(1);
   y(ii) = temp(2);
end

% Perform the fit
p = polyfit(x,y,1);
slope = p(1);
y_int = p(2); 

% Tell user.
disp('Regression coefficients for the least-squares line:');
fprintf('  Slope (m)     = %8.3f\n', slope);
fprintf('  Intercept (b) = %8.3f\n', y_int);
fprintf('  No. of points = %8d\n', n_points);

% Plot the data points as blue circles with no 
% connecting lines.
plot(x,y,'bo');
hold on;

% Create the fitted line
x1(1) = min(x);
x1(2) = max(x);
y1 = polyval(p,x1);

% Plot a solid red line with no markers
plot(x1,y1,'r-','LineWidth',2);
hold off;

% Add a title and legend
title ('\bfLeast-Squares Fit');
xlabel('\bf\itx');
ylabel('\bf\ity');
legend('Input data','Fitted line');
grid on
