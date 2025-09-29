%  Script file: sphere1.m
%
%  Purpose: 
%    This program plots the sphere using the surf function. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    06/02/18    S. J. Chapman        Original code 
%
% Define variables:
%   n         -- Number of points in az and el to plot
%   r         -- Radius of sphere
%   phi       -- meshgrid list of elevation values
%   theta     -- meshgrid list of azimuth values
%   x         -- Array of x point to plot
%   y         -- Array of y point to plot
%   z         -- Array of z point to plot

% Define the number of angles on the sphere to plot
% points at
n = 20;

% Calculate the points on the surface of the sphere
r = 1;
theta = linspace(-pi,pi,n);
phi = linspace(-pi/2,pi/2,n);
[theta,phi] = meshgrid(theta,phi);

% Convert to (x,y,z) values
x = r * cos(phi) .* cos(theta);
y = r * cos(phi) .* sin(theta);
z = r * sin(phi);

% Plot the sphere
figure(1)
surf (x,y,z);
title ('\bfSphere');
