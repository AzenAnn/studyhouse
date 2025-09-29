%  Script file: linear_and_log_plots.m
%
%  Purpose: 
%    This program plots the function y(x) = x^2 - 10*x + 25
%    on linear and semilogx axes.. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/06/17    S. J. Chapman        Original code 
%

% Create a figure with two subplots
subplot(2,1,1);

% Now create the linear plot
x = linspace(0, 10, 21);
y =  x.^2 - 10*x + 25;
plot(x,y,'b-');
hold on;
plot(x,y,'ro');
title('Linear Plot');
xlabel('x');
ylabel('y');
hold off;

% Select the other subplot
subplot(2,1,2);

% Now create the logarithmic plot
x = logspace(-1, 1, 21);
y =  x.^2 - 10*x + 25;
semilogx(x,y,'b-');
hold on;
semilogx(x,y,'ro');
title('Semilog x Plot');
xlabel('x');
ylabel('y');
hold off;

