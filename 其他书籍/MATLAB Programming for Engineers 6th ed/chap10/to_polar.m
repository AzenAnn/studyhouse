function out = to_rect(in)
%TO_POLAR Convert a vector from rect to polar
% Function TO_POLAR converts a vector from rectangular
% coordinates to polar coordinates.
%
% Calling sequence:
%    out = to_rect(in)
 
% Define variables:
%   in       -- Structure containing fields x and y 
%   out      -- Structure containing fields r and theta (in degrees)

%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    03/10/18    S. J. Chapman        Original code 

% Check for valid input
if ~isfield(in,'x') || ~isfield(in,'y') 
   error('Input argument does not contain fields ''x'' and ''y''');
else

   % Calculate output.
   out.r     = sqrt(in.x .^2 + in.y .^2);
   out.theta = atan2(in.y,in.x) * 180/pi;
end
