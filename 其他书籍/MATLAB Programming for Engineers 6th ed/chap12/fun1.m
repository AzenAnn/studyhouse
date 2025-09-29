function fun1()
   try
      fun2;
   catch ME
   
      id = ME.identifier
      msg = ME.message
      stack = ME.stack
      cause = ME.cause
      
      % Display the stack
      for ii = 1:length(stack)
         stack(ii)
      end
      
   end
end

function fun2
   surf;
end 
