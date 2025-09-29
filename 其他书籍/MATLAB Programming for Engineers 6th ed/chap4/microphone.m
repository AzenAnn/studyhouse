%  Script file: microphone.m
%
%  Purpose: 
%    This program plots the gain pattern of a cardioid 
%    microphone. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/15/18    S. J. Chapman        Original code 
%
% Define variables:
%   g         -- Microphone gain constant
%   gain      -- Gain as a function of angle
%   theta     -- Angle from microphone axis (radians)

% Calculate gain versus angle
g = 0.5;
theta = linspace(0,2*pi,41);
gain = 2*g*(1+cos(theta));

% Plot gain
polar (theta,gain,'r-');
title ('\bfGain versus angle \theta');
