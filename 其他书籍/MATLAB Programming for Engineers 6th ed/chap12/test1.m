classdef test1
   
   % Sample class illustrating access control using attributes
   
   properties (Access=public)
      a;         % Public access
      b;         % Public access
   end
   
   properties (GetAccess=public, SetAccess=private)
      c;         % Read only
   end
   
   methods
      
      % Declare the constructor
      function obj = test1(a,b,c)
         obj.a = a;
         obj.b = b;
         obj.c = c;
      end      
   end

end
