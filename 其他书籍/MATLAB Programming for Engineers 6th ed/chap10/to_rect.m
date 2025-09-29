function out = to_rect(in)
%TO_RECT Convert a vector from polar to rect
% Function TO_RECT converts a vector from polar
% coordinates to rectangular coordinates.
%
% Calling sequence:
%    out = to_rect(in)
 
% Define variables:
%   in       -- Structure containing fields r and theta (in degrees)
%   out      -- Structure containing fields x and y

%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    03/10/18    S. J. Chapman        Original code 

% Check for valid input
if ~isfield(in,'r') || ~isfield(in,'theta') 
   error('Input argument does not contain fields ''r'' and ''theta''');
else

   % Calculate output.
   out.x = in.r * cos(in.theta * pi/180);
   out.y = in.r * sin(in.theta * pi/180);
end
