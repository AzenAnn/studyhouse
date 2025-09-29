%  Script file: decaying_exponential.m
%
%  Purpose: 
%    This program plots the function 
%    y(t) = 10*EXP(-t/tau)*SIN(omega*t)
%    on linear and semilogx axes.. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/06/18    S. J. Chapman        Original code 
%
% Define variables:
%   tau       -- Time constant, s
%   omega     -- Radial velocity, rad/s
%   t         -- Time (s)
%   y         -- Output of function

% Declare time constant and radial velocity
tau = 3;
omega = pi;

% Now create the plot
t = linspace(0, 10, 100);
y =  10 * exp(-t./tau) .* sin(omega .* t);;
plot(t,y,'b-');
title('Plot of \it{y(t)} = \it{e}^{-\it{t / \tau}} sin \it{\omegat}');
xlabel('\it{t}');
ylabel('\it{y(t)}');
grid on;

