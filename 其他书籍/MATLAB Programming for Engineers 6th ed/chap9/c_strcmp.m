function result = c_strcmp(str1,str2) 
%C_STRCMP Compare character arrays like C function "strcmp"
% Function C_STRCMP compares two character arrays, and 
% returns a -1 if str1 < str2, a 0 if str1 == str2, and a 
% +1 if str1 > str2.
 
% Define variables:
%   char_arr  -- Padded array of character arrays
%   diff      -- Logical array of string differences
%   result    -- Result of function
%   str1      -- First string to compare
%   str2      -- Second string to compare
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/25/18    S. J. Chapman        Original code 

% Check for a legal number of input arguments.
narginchk(2,2);

% Check to see if the arguments are character arrays 
if ~(ischar(str1) & ischar(str2))
   error('Both str1 and str2 must both be character!')
else

   % Pad character arrays
   char_arr = strvcat(str1,str2);
   
   % Compare character arrays
   diff = char_arr(1,:) ~= char_arr(2,:);
   if sum(diff) == 0
   
      % Character arrays match, so return a zero!
      result = 0;
   else
      % Find first difference between character arrays
      ival = find(diff);
      if char_arr(1,ival(1)) > char_arr(2,ival(1))
         result = 1;
      else
         result = -1;
      end
   end
end
