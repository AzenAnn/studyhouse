% The vector as a handle class
classdef vector_handle < handle

   properties (Access = public)
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
   end
      
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   % Declare access methods for the 
   % properties.
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   methods
      
      % Add setter for x
      function set.x(this,value)
         if isa(value,'double')
            this.x = value;
         else
            disp('Invalid value assigned to x ignored');
         end
      end
      
      % Add setter for y
      function set.y(this,value)
         if isa(value,'double')
            this.y = value;
         else
            disp('Invalid value assigned to y ignored');
         end
      end
      
      % Add getter for x
      function x = get.x(this)
         x = this.x;
      end
      
      % Add getter for y
      function y = get.y(this)
         y = this.y;
      end
   end
      
end
