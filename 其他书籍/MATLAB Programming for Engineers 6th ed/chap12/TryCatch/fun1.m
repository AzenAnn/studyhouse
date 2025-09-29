function fun1()
   try
      fun2;
   catch ME
      disp('Catch in fun1:');
      ME.getReport()
      rethrow(ME);
   end
end

function fun2
   try
      surf;
   catch ME
      disp('Catch in fun2:');
      ME.getReport()
      rethrow(ME);
   end
end 
