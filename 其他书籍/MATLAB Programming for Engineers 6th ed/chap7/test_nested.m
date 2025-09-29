function test_nested()
a = [];
x = nested_fn_1(1);

   function y = nested_fn_1(z)
      y = z;
      a = z;
   end

   fprintf('x = %f\n', x);
   fprintf('a = %f\n', a);
end