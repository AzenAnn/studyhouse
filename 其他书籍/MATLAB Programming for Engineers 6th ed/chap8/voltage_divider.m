%  Script file: voltage_divider.m
%
%  Purpose:  
%    This program calculates the output voltage across an
%    AC voltage divider circuit.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/17/18    S. J. Chapman        Original code 
%
% Define variables:
%   vin          -- Input voltage
%   vout         -- Output voltage across z2
%   z1           -- Impedance of first element
%   z2           -- Impedance of second element

% Prompt the user for the coefficients of the equation
disp ('This program calculates the output voltage across a voltage divider. ');
vin = input ('Enter input voltage: ');
z1  = input ('Enter z1: ');
z2  = input ('Enter z2: ');

% Calculate the output voltage
vout = z2 / (z1 + z2) * vin;

% Display results
disp ('The output voltage is:');
fprintf ('vout = %f at an angle of %f degrees\n', abs(vout), angle(vout)*180/pi);
