% Program to test the MyTimer class

% Create the timer object
t = MyTimer();

% Solve a 1000 x 1000 set of simultaneous equations
A = rand(1000,1000);
b = rand(1000,1);
x = A\b;

% Get the elapsed time
disp(['The time to solve a 1000 x 1000 set of equations is ' num2str(t.elapsedTime())]);

% Reset the timer
t.resetTimer();

% Solve a 10000 x 10000 set of simultaneous equations
A = rand(10000,10000);
b = rand(10000,1);
x = A\b;

% Get the elapsed time
disp(['The time to solve a 10000 x 10000 set of equations is ' num2str(t.elapsedTime())]);


