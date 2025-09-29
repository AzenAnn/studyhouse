% Declare the Employee class
classdef Employee < handle

   properties (Access = protected)
      firstName;     % First name
      lastName;      % Last name
      ssn;           % Social security number
      pay;           % pay
   end
   
   methods (Access = public)
      
      % Declare the constructor
      function this = Employee(first, last, ssn)
         if nargin >= 3
            
            this.firstName = first;
            this.lastName  = last;
            this.ssn       = ssn;
            this.pay       = 0;
            
         elseif nargin >= 2
            
            this.firstName = first;
            this.lastName  = last;
            this.ssn       = '';
            this.pay       = 0;

         elseif nargin >= 1
            
            this.firstName = first;
            this.lastName  = '';
            this.ssn       = '';
            this.pay       = 0;

         else
            
            this.firstName = '';
            this.lastName  = '';
            this.ssn       = '';
            this.pay       = 0;

         end
      end
      
      % Declare a method to set the First Name
      function set.firstName(this,value)
         if isa(value,'char')
            this.firstName = value;
         else
            disp('Invalid value assigned to firstName ignored');
         end
      end
      
      % Declare a method to set the Last Name
      function set.lastName(this,value)
         if isa(value,'char')
            this.lastName = value;
         else
            disp('Invalid value assigned to lastName ignored');
         end
      end
      
      % Declare a method to set the SSN
      function set.ssn(this,value)
         if isa(value,'char')
            this.ssn = value;
         else
            disp('Invalid value assigned to ssn ignored');
         end
      end
      
      % Declare a method to get the First Name
      function firstName = get.firstName(this,value)
         firstName = this.firstName;
      end
      
      % Declare a method to get the Last Name
      function lastName = get.lastName(this,value)
         lastName = this.lastName;
      end
      
      % Declare a method to get the SSN
      function ssn = get.ssn(this,value)
         ssn = this.ssn;
      end
      
      % Declare a method to get the weekly pay
      function pay = get.pay(this,value)
         ssn = this.pay;
      end
      
      % Declare a method to calculate the pay.
      % Note that this is a dummy method in the 
      % Employee class.
      function obj = calcPay( hours )
         this.pay = 0;
      end
   end
      
end
