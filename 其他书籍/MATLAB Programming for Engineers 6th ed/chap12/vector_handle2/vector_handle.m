% Modified vector_handle class
classdef vector_handle < handle

   properties
      x;         % X value of vector
      y;         % Y value of vector
   end
   
   methods
      
      % Declare the constructor
      function this = vector_handle(a,b)
         this.x = a;
         this.y = b;
      end
      
      % Declare a method to calculate the length
      % of the vector.
      function result = length(this)
         result = sqrt(this.x.^2 + this.y.^2);
      end
      
      % Declare a method to add two vectors together
      function add(this,obj2)
         this.x = this.x + obj2.x;
         this.y = this.y + obj2.y;
      end
      
      % Declare a destructor
      function delete(this)
         disp('Object destroyed.');
      end
      
   end

end
