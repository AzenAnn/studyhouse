% Test try/catch

% Initialize array
a = [ 1 -3 2 5];

try
   
   % Try to display an element
   index = input('Enter subscript of element to display: ');
   disp( ['a(' int2str(index) ') = ' num2str(a(index))] );
   
catch ME
    
   % If we get here, an error occurred.  Display the error.
   ME
   stack = ME.stack
   
end
