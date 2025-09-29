classdef Subclass2 < Superclass

   methods
      function this = Subclass2(a)
         this.a = a;
      end
    
      function eval(this)
         disp(num2str(this.a.^3));
      end
   end
   
end