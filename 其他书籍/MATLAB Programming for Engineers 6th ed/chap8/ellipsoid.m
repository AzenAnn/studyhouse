%  Script file: ellipsoid.m
%
%  Purpose: 
%    This program plots the sphere using the surf function. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    06/02/14    S. J. Chapman        Original code 
%
% Define variables:
%   a         -- Length of major axis
%   b         -- Length of minor axis
%   n         -- Number of points in az and el to plot
%   r         -- Radius of sphere
%   phi       -- meshgrid list of elevation values
%   Phi       -- Array of elevation values to plot
%   theta     -- meshgrid list of azimuth values
%   Theta     -- Array of azimuth values to plot
%   x         -- Array of x point to plot
%   y         -- Array of y point to plot
%   z         -- Array of z point to plot

% Define the number of angles on the sphere to plot
% points at
n = 20;

% Calculate the points on the surface of the sphere
a = 2;
b = 1;
theta = linspace(-pi,pi,n);
phi = linspace(-pi/2,pi/2,n);
[theta,phi] = meshgrid(theta,phi);

% Convert to (x,y,z) values
x = a * cos(phi) .* cos(theta);
y = b * cos(phi) .* sin(theta);
z = b * sin(phi);

% Plot the sphere
figure(1)
surf (x,y,z);
title ('\bfEllipsoid');
axis equal;
