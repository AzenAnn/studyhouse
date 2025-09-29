%  Script file: timings.m
%
%  Purpose: 
%    This program calculates the time required to 
%    calculate the squares of all integers from 1 to
%    100,000 in three different ways:
%    1.  Using a for loop with an uninitialized output
%        array.
%    2.  Using a for loop with a preallocated output
%        array and the JIT compiler.
%    3.  Using vectors.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/29/18    S. J. Chapman        Original code 
%
% Define variables:
%   ii, jj       -- Loop index
%   average1     -- Average time for calculation 1
%   average2     -- Average time for calculation 2
%   average3     -- Average time for calculation 3
%   maxcount     -- Number of times to loop calculation
%   square       -- Array of squares

%% Uninitialised array case

% Perform calculation with an uninitialized array 
% "square".  This calculation is averaged over 1000  
% loops.  
maxcount = 1000;            % Number of repetitions
tic;                        % Start timer
for jj = 1:maxcount        
   clear square             % Clear output array
   for ii = 1:10000       
      square(ii) = ii^2;     % Calculate square
   end
end
average1 = (toc)/maxcount;  % Calculate average time 

%% Pre-allocated array case

% Perform calculation with a pre-allocated array 
% "square".  This calculation is averaged over 1000  
% loops.
maxcount = 1000;             % Number of repetitions
tic;                         % Start timer
for jj = 1:maxcount        
   clear square              % Clear output array
   square = zeros(1,10000);  % Pre-initialize array
   for ii = 1:10000       
      square(ii) = ii^2;     % Calculate square
   end
end
average2 = (toc)/maxcount;   % Calculate average time 

%% Vector case

% Perform calculation with vectors.  This calculation 
% averaged over 1000 executions. 
maxcount = 1000;             % Number of repetitions
tic;                         % Start timer
for jj = 1:maxcount        
   clear square              % Clear output array
   ii = 1:10000;             % Set up vector
   square = ii.^2;           % Calculate square
end
average3 = (toc)/maxcount;   % Calculate average time 

% Display results
fprintf('Loop / uninitialized array        = %8.5f\n', average1);
fprintf('Loop / initialized array / JIT    = %8.5f\n', average2);
fprintf('Vectorized                        = %8.5f\n', average3);
