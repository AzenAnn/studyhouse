function area = integrate(fun, x1, x2, dx)
%
%  Purpose: 
%    This program calculates the definite integral of a 
%    specified function between user-defined limits. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/16/18    S. J. Chapman        Original code 
%
% Calling arguments
%   fun       -- handle of function to integrate
%   x1        -- starting point
%   x2        -- ending point
%   dx        -- step size
%   area      -- area under curve

% Define local variables:
%   ii        -- loop index
%   height    -- height of current rectangle
%   n         -- number of rectangles to use
%   xstart    -- starting position of current rectangle

% Check for a proper number of arguments
narginchk(4,4);

% Check that x1 < x2
if x1 > x2
   error('x2 must be >= x1');
    
else

   % Perform integration
   area = 0;
   
   % Get number of rectangles
   n = floor( (x2 - x1) / dx + 1 );
   
   % Adjust dx to fit the number of rectangles
   dx = (x2 - x1) / (n - 1);
   
   % Sum the areas
   for ii = 1:n
      xstart = x1 + (ii-1) * dx;
      height = fun(xstart + dx/2);
      area   = area + dx * height;
   end
   
end
