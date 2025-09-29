
% Get method for numberOfWrites
function count = getNumberOfWrites(this)
   count = this.numberOfWrites;
end

% Destructor method to close file when object is destroyed 
function delete(this)
   fclose(this.fid);
end 
