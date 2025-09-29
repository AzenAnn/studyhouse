classdef Square < Shape

   properties
      len;         % Length of side
   end
   
   methods
      
      % Declare the constructor
      function this = Square(len)

         % For debugging only
         disp('In Square constructor...');

         this = this@Shape();
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
         disp('In Square method calc_area...');
         
         this.area = this.len.^2;
      end
      
      % Declare a method to calculate the perimeter
      % of the shape.
      function calc_perimeter(this)
     
         % For debugging only
         disp('In Square method calc_perimeter...');
         
         this.perimeter = 4 * this.len;
      end
      
      % Declare a method that returns info about
      % the shape.
      function string(this)
     
         % For debugging only
         disp('In Shape method string...');
         
          str = ['Shape of class "' class(this) ...
                 '", area ' num2str(this.area) ...
                 ', and perimeter ' num2str(this.perimeter)];
          disp(str);
      end
      
   end

end
