function seed(new_seed)
%SEED Set new seed for function RANDOM0
% Function SEED sets a new seed for function 
% RANDOM0.  The new seed should be a positive
% integer.
 
% Define variables:
%   iseed    -- Random number seed (global)
%   new_seed -- New seed
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/04/18    S. J. Chapman        Original code 

% Declare global values
global ISEED            % Seed for random number generator

% Check for a legal number of input arguments.
narginchk(1,1);

% Save seed
new_seed = round(new_seed);
ISEED = abs(new_seed);
