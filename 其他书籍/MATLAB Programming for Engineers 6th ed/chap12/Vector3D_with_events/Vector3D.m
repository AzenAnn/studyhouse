% Declare the Vector 3D class that generates events
classdef Vector3D < handle

   properties (Access = public)
      x;         % X value of vector
      y;         % Y value of vector
      z;         % Z value of vector
   end
   
   events 
      CreateEvent;   % Create object event
      DestroyEvent;  % Destroy object event
   end
   
   methods (Access = public)
      
      % Declare the constructor
      function this = Vector3D(a,b,c)
         
         % Add event listeners when the object is created
         h1 = addlistener(this,'CreateEvent',@createHandler);
         addlistener(this,'DestroyEvent',@destroyHandler);
         
         % Notify about the create event
         notify(this,'CreateEvent');
         
         if nargin < 3
            
            % Default constructor
            this.x = 0;
            this.y = 0;
            this.z = 0;
            
         else
            
            % Constructor with input variables
            this.x = a;
            this.y = b;
            this.z = c;
         end
      end
      
      % Declare a method to add two vectors
      function obj = plus(objA,objB)
         obj = Vector3D;
         obj.x = objA.x + objB.x;
         obj.y = objA.y + objB.y;
         obj.z = objA.z + objB.z;
      end
      
      % Declare a method to subtract two vectors
      function obj = minus(objA,objB)
         obj = Vector3D;
         obj.x = objA.x - objB.x;
         obj.y = objA.y - objB.y;
         obj.z = objA.z - objB.z;
      end
      
      % Declare a method to check for equivalence
      function result = eq(objA,objB)
         result = (objA.x == objB.x) && ...
                  (objA.y == objB.y) && ...
                  (objA.z == objB.z);
      end
      
      % Declare a method to check for non-equivalence
      function result = ne(objA,objB)
         result = (objA.x ~= objB.x) || ...
                  (objA.y ~= objB.y) || ...
                  (objA.z ~= objB.z);
      end

      % Declare the destructor
      function delete(this);
         % Notify about the destroy event
         notify(this,'DestroyEvent');
      end
      
   end
      
end
