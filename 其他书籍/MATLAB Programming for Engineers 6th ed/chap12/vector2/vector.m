classdef vector

   properties
      x;         % X value of vector
      y;         % Y value of vector
   end
   
   methods
      
      % Declare the constructor
      function v = vector(a,b)
         if nargin < 2
            v.x = 0;
            v.y = 0;
         else
            v.x = a;
            v.y = b;
         end
      end
      
      % Declare a method to calculate the length
      % of the vector.
      function result = length(this)
         result = sqrt(this.x.^2 + this.y.^2);
      end
      
      % Declare a method to add two vectors together
      function obj = add(this,obj2)
         obj = vector();
         obj.x = this.x + obj2.x;
         obj.y = this.y + obj2.y;
      end
      
   end

end
