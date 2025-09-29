classdef FileWriter < handle

   % Property data is private to the class
   properties (Access = private)
      fid                    % File ID
      numberOfWrites         % Number of writes to file
   end % properties

   % Declare methods in class
   methods (Access = public)
   
      % Constructor 
      function this = FileWriter(filename,access)
      
         % Check arguments
         if nargin == 0
         
            % No file name
            ME = MException('FileWriter:noFileName', ...
                            'No file name supplied');
            throw(ME);
         
         elseif nargin < 2
         
            % Assume append access by default
            access = 'a';
            
         end
      
         % Validate that filename contains a string
         if ~isa(filename,'char')
            
            % The input data is of an invalid type
            ME = MException('FileWriter:invalidFileNameString', ...
                            'Input filename is not a valid string');
            throw(ME);
                            
         else
      
            % Open file and save File ID
            this.fid = fopen(filename,access);
            
            % Did the file open successfully?
            if this.fid <= 0
            
               % The input data is of an invalid type
               ME = MException('FileWriter:openFailed', ...
                               'Input file cannot be opened');
               throw(ME);
               
            end
               
            % Zero the number of writes
            this.numberOfWrites = 0;
            
         end
         
      end
 
       % Write string to file
      function writeToFile(this,text_str)
      
         % Validate that the input parameter is a string
         if ~isa(text_str,'char')
            
            % The input data is of an invalid type
            ME = MException('FileWriter:writeToFile:invalidString', ...
                            'Input parameter is not a valid string');
            throw(ME);
                            
         else
      
            % Write string to file
            fprintf(this.fid,'%s\n',text_str);
            this.numberOfWrites = this.numberOfWrites + 1;
            
         end
         
      end
 
      % Get method for numberOfWrites
      function count = getNumberOfWrites(this)
         count = this.numberOfWrites;
      end
      
      % Destructor method to close file when object is destroyed 
      function delete(this)
         fclose(this.fid);
      end 
      
   end  % methods
   
end % class