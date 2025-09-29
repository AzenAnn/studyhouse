classdef vector

   properties (Access=private)
      x;         % X value of vector
      y;         % Y value of vector
   end
   
   methods
      
      % Declare the constructor
      function obj = vector(a,b)
         obj.x = a;
         obj.y = b;
      end
      
      % Declare a method to calculate the length
      % of the vector.
      function result = length(obj)
         result = sqrt(obj.x.^2 + obj.y.^2);
      end
      
      % Declare a method to add two vectors together
      function obj = add(obj,obj2)
         obj.x = obj.x + obj2.x;
         obj.y = obj.y + obj2.y;
      end
      
   end

end
