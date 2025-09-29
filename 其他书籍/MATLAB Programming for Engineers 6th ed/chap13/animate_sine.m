%  Script file: animate_sine.m
%
%  Purpose: 
%    This program illustrates the animation of a plot
%    by updating the data in the plot with time.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    04/02/18    S. J. Chapman        Original code
%
% Define variables:
%   h1           -- Handle of line
%   a            -- Amplitude of sine function at an instant
%   x            -- Independent variable
%   y            -- a * cos(t) * sin(x)

% Calculate the times at which to plot the sine function
t = 0:0.1:10;

% Calculate sine(x) for the first time
a = cos(t(1));
x = -3*pi:pi/10:3*pi;
y = a * sin(x);

% Plot the function.
figure(1);
hndl = plot(x,y);
xlabel('\bfx');
ylabel('\bfAmp');
title(['\bfSine Wave Animation at t = ' num2str(t(1),'%5.2f')]);

% Set the size of the y axes
set(gca,'YLim',[-1 1]);

% Now do the animation
for ii = 2:length(t)

   % Pause for a moment
   drawnow;
   %pause(0.1);
    
   % Calculate sine(x) for the new time
   a = cos(t(ii));
   y = a * sin(x);

   % Update the line
   set(hndl, 'YData', y);
   
   % Update the title
   title(['\bfSine Wave Animation at t = ' num2str(t(ii),'%5.2f')]);

end
