% This script tests the FileWriter in 'a', which
% deletes any pre-existing file.

% Create object
a = FileWriter('newfile.txt','a');

% Write three lines of text
a.writeToFile('Line 1');
a.writeToFile('Line 2');
a.writeToFile('Line 3');

% How many lines have been written?
disp([int2str(a.getNumberOfWrites()) ' lines have been written.']);

% Destroy the object
a.delete();

% Display data
type 'newfile.txt'