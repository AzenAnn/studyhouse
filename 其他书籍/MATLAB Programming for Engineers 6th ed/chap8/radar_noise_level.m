%  Script file: radar_noise_level.m
%
%  Purpose: 
%    This program calculates the background noise level 
%    in a buffer of radar data.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    05/29/14    S. J. Chapman        Original code 
%
% Define variables:
%   ii, jj       -- Loop index
%   average1     -- Average time for calculation 1
%   average2     -- Average time for calculation 2
%   average3     -- Average time for calculation 3
%   maxcount     -- Number of times to loop calculation
%   square       -- Array of squares

% Load the data
load rd_space.mat
	
% Calculate histogram
[nvals, amp_levels] = hist(amp(:), 31);

% Get location of peak
[max_val, max_loc] = max(nvals);

% Get the power level of that bin
noise_power = amp_levels(max_loc);

% Tell user
fprintf('The noise level in the buffer is %6.2f dBm.\n', noise_power);

