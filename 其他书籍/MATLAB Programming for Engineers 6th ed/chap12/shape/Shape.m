classdef Shape < handle

   properties
      area;         % Area of shape
      perimeter;    % Perimeter of shape
   end
   
   methods
      
      % Declare the constructor
      function this = Shape()
      
         % For debugging only
         disp('In Shape constructor...');
         
         this.area = 0;
         this.perimeter = 0;

      end
      
      % Declare a method to calculate the area
      % of the shape.
      function calc_area(this)
     
         % For debugging only
         disp('In Shape method calc_area...');
         
         this.area = 0;
      end
      
      % Declare a method to calculate the perimeter
      % of the shape.
      function calc_perimeter(this)
     
         % For debugging only
         disp('In Shape method calc_perimeter...');
         
         this.perimeter = 0;
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
