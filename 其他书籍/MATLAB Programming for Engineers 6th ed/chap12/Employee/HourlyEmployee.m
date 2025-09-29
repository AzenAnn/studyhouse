% Declare the HourlyEmployee class
classdef HourlyEmployee < Employee

   properties (Access = private)
      salary;        % Salary
   end
   
   methods (Access = public)
      
      % Declare the constructor
      function this = HourlyEmployee(first, last, ssn, salary)
         if nargin >= 4
            
            this@Employee(first, last, ssn);
            this.salary = salary;
            
         elseif nargin >= 3
            
            this@Employee(first, last, ssn);
            this.salary = 0;
            
         elseif nargin >= 2
            
            this@Employee(first, last);
            this.salary = 0;

         elseif nargin >= 1
            
            this@Employee(first);
            this.salary = 0;

         else
            
            this@Employee;
            this.salary = 0;

         end
      end
      
      % Declare a method to set the salary
      function set.salary(this,value)
         if isa(value,'double')
            this.salary = value;
         else
            disp('Invalid value assigned to salary ignored');
         end
      end
      
      % Declare a method to get the salary
      function salary = get.salary(this)
         salary = this.salary;
      end
      
      % Declare a method to calculate the pay.
      % Note that this is a dummy methods in the 
      % HourlyEmployee class.
      function obj = calcPay( this, hours )
         this.pay = salary;
      end
   end
      
end
