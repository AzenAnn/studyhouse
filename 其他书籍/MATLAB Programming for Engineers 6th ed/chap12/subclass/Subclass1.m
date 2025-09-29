classdef Subclass1 < Superclass

   methods
      function this = Subclass1(a)
         this.a = a;
      end
    
      function eval(this)
         disp(num2str(this.a.^2));
      end
   end
   
end