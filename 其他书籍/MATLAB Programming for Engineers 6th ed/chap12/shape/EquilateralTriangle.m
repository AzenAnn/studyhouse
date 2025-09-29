classdef EquilateralTriangle < Shape

   properties
      len;         % Length of side
   end
   
   methods
      
      % Declare the constructor
      function this = EquilateralTriangle(len)
      
         % For debugging only
         disp('In EquilateralTriangle constructor...');
         
         if nargin > 0
            this.len = len;
         end
         this.calc_area();
         this.calc_perimeter();

      end
      
      % Declare a method to calculate the area
      % of the shape.
      function calc_area(this)
     
         % For debugging only
         disp('In EquilateralTriangle method calc_area...');
         
         this.area = sqrt(3) / 4 * this.len.^2;
      end
      
      % Declare a method to calculate the perimeter
      % of the shape.
      function calc_perimeter(this)
     
         % For debugging only
         disp('In EquilateralTriangle method calc_perimeter...');
         
         this.perimeter = 3 * this.len;
      end
      
   end

end
