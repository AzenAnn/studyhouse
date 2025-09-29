%  Script file: stats_4.m
%
%  Purpose: 
%    To calculate mean, median, and standard deviation of 
%    an input data set, using the standard MATLAB
%    functions mean and std.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/27/18    S. J. Chapman        Original code 
%
% Define variables:
%   ii      -- Loop index
%   med     -- Median of the input samples
%   n       -- The number of input samples
%   std_dev -- The standard deviation of the input samples
%   sum_x   -- The sum of the input values
%   sum_x2  -- The sum of the squares of the input values
%   x       -- An input data value
%   xbar    -- The average of the input samples

% Get the number of points to input.
n = input('Enter number of points: ');

% Check to see if we have enough input data.
if n < 2   % Insufficient data

   disp ('At least 2 values must be entered.');

else % we will have enough data, so let's get it.

   % Allocate the input data array
   x = zeros(1,n);
 
   % Loop to read input values.
   for ii = 1:n

      % Read in next value
      x(ii) = input('Enter value:  ');

   end

   % Now calculate statistics.
   x_bar = mean(x);
   med = median(x);
   std_dev = std(x);

   % Tell user.
   fprintf('The mean of this data set is:   %f\n', x_bar);
   fprintf('The median of this data set is: %f\n', med);
   fprintf('The standard deviation is:      %f\n', std_dev);
   fprintf('The number of data points is:   %f\n', n);
   
end
