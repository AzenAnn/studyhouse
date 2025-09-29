function quickplot(fun,xlim)
%QUICKPLOT Generate quick plot of a function
% Function QUICKPLOT generates a quick plot 
% of a function contained in a external m-file,
% between user-specified x limits.  The name of
% the function to execute is passed in as a
% character string.
 
% Define variables:
%   fun       -- Name of function to plot in a char string
%   msg       -- Error message
%   x         -- X-values to plot
%   y         -- Y-values to plot
%   xlim      -- Plot x limits
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/07/18    S. J. Chapman        Original code 

% Check for a legal number of input arguments.
msg = narginchk(2,2);

% Check the second argument to see if it has two 
% elements.  Note that this double test allows the 
% argument to be either a row or a column vector.
if ( size(xlim,1) == 1 && size(xlim,2) == 2 ) | ...
   ( size(xlim,1) == 2 && size(xlim,2) == 1 )
   
   % Ok--continue processing.
   n_steps = 100;
   x = linspace(xlim(1), xlim(2));
   y = zeros(size(x));
   
   for ii = 1:length(x)
      y(ii) = feval(fun,x(ii));
   end
   
   plot(x,y);
   title(['\bfPlot of function ' fun '(x)']);
   xlabel('\bfx');
   ylabel(['\bf' fun '(x)']);
   
else
   % Else wrong number of elements in xlim.
   error('Incorrect number of elements in xlim.');
end
