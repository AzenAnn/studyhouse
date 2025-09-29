function result = fact(n)
%FACT Calculate the factorial function
% Function FACT calcualates the factorial function
% by recursively calling itself.
 
% Define variables:
%   n         -- Non-negative integer input
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/07/18    S. J. Chapman        Original code 

% Check for a legal number of input arguments.
msg = nargchk(1,1,nargin);
error(msg);

% Calculate function
if n == 0
   result = 1;
else
   result = n * fact(n-1);
end
