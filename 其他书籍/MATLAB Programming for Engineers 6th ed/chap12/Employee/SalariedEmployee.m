% Declare the SalariedEmployee class
classdef SalariedEmployee < Employee

   properties (Access = private)
      rate;        % Pay rate ($/hr)
   end
   
   methods (Access = public)
      
      % Declare the constructor
      function this = SalariedEmployee(first, last, ssn, rate)
         if nargin >= 4
            
            this@Employee(first, last, ssn);
            this.rate = rate;
            
         elseif nargin >= 3
            
            this@Employee(first, last, ssn);
            this.rate = 0;
            
         elseif nargin >= 2
            
            this@Employee(first, last);
            this.rate = 0;

         elseif nargin >= 1
            
            this@Employee(first);
            this.rate = 0;

         else
            
            this@Employee;
            this.rate = 0;

         end
      end
      
      % Declare a method to set the pay rate
      function set.rate(this,value)
         if isa(value,'double')
            this.rate = value;
         else
            disp('Invalid value assigned to rate ignored');
         end
      end
      
      % Declare a method to get the pay rate
      function rate = get.rate(this)
         rate = this.rate;
      end
      
      % Declare a method to calculate the pay.
      % Note that this is a dummy methods in the 
      % SalariedEmployee class.
      function obj = calcPay( this, hours )
         this.pay = rate;
      end
   end
      
end
