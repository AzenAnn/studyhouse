%  Script file: radar_noise_level.m
%
%  Purpose: 
%    This program calculates the background noise level 
%    in a buffer of radar data.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/15/18    S. J. Chapman        Original code 
%
% Define variables:
%   amp          -- Power level in each cell
%   counts       -- Array containing the number of samples
%                     in each bin
%   edges        -- Array containing the power levels marking
%                     the bondaries between the bins
%   noise_power  -- Power level of bin with peak noise
%   p_bin        -- Average power level in each bin

% Load the data
load rd_space.mat

% Calculate histogram
[counts, edges] = histcounts(amp, 31);

% Calculate the average power level of each bin
p_bin = zeros(size(counts));
for ii = 1:length(p_bin)-1
   p_bin(ii) = (edges(ii) + edges(ii+1)) / 2;
end

% Get the location of peak
[max_val, max_loc] = max(counts);

% Get the power level of that bin
noise_power = p_bin(max_loc);

% Tell user
fprintf('The noise level in the buffer is %6.2f dBm.\n', noise_power);

