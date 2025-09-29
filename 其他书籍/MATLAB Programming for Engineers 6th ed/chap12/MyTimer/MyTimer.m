classdef MyTimer < handle
   % Timer to measure elapsed time since object creation or last reset

   properties (Access = private)
      savedTime;     % Time of creation or last reset
   end

   methods (Access = public)
      
      % Constructor
      function this = MyTimer()
         % Initialize object to current time
         timvec = clock;
         this.savedTime = 3600*timvec(4) + 60*timvec(5) + timvec(6);
      end

      % Reset timer
      function resetTimer(this)
         % Reset object to current time
         timvec = clock;
         this.savedTime = 3600*timvec(4) + 60*timvec(5) + timvec(6);
      end

      % Calculate elapsed time
      function dt = elapsedTime(this)
         % Get the current time
         timvec = clock;
         timeNow = 3600*timvec(4) + 60*timvec(5) + timvec(6);
         
         % Now calculate elapsed time
         dt = timeNow - this.savedTime;
      end
   end   
end
