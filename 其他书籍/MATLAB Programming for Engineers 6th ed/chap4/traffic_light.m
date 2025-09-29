%  Script file: traffic_light.m
%
%  Purpose: 
%    This program calculates the color of traffic
%    lights as a function of time. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/18/18    S. J. Chapman        Original code 
%
% Define variables:
%   time      -- Time in seconds

% Prompt the user for the time.
time = input('Enter the time in seconds: ');
 
% Calculate thet status of the lights and tell the user
if time < 0 
   disp(['ERROR: time out of bounds!']);
elseif time <= 56
   disp(['East-West road light is Green']);
   disp(['North-South road light is Red']);
elseif time <= 60
   disp(['East-West road light is Yellow']);
   disp(['North-South road light is Red']);
elseif time <= 116
   disp(['East-West road light is Red']);
   disp(['North-South road light is Green']);
elseif time <= 120
   disp(['East-West road light is Red']);
   disp(['North-South road light is Yellow']);
else
   disp(['ERROR: time out of bounds!']);
end    
