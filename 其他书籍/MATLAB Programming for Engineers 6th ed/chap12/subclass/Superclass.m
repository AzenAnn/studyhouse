classdef Superclass < handle

   properties
      a;
   end
   
   methods
      function eval(this)
         disp(num2str(this.a));
      end
   end
   
end