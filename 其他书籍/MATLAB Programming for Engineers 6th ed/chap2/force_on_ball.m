%  Script file: force-on_ball.m
%
%  Purpose: 
%    To calculate the net force on a ball the the corresponding
%    acceleration..
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/05/18    S. J. Chapman        Original code 
%
% Define variables:
%   fapp      -- Applied force (N)
%   fg        -- Force due to gravity (N)
%   fnet      -- Net force (N)
%   fnet_mag  -- Magntitude of net force (N)
%   g         -- Acc tue to gravity (m/s^2).
%   m         -- Mass of ball (kg)

% Constants
g = [0 0 -9.81];  % Acceleration due to gravity (m/s^2)
m = 2.0;          % Mass (kg)

% Get the forces applied to the ball
fapp = [10 20 5]; % Applied force
fg = m .* g;      % Force due to gravity

% Calculate the net force on the ball
fnet = fapp + fg;  % Net force

% Tell the user 
disp(['The net force on the ball is ' num2str(fnet) ' N.']);

% Get the magnitude of the net force
fnet_mag = sqrt(fnet(1)^2 + fnet(2)^2 + fnet(3)^2);
disp(['The magnitude of the net force is ' num2str(fnet_mag) ' N.']);

% Get the acceleration
a = fnet ./ m;
disp(['The acceleration of the ball is ' num2str(a)  ' m/s^2.']);
