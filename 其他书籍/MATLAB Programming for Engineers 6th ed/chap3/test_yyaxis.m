% Input data
x0 = 10;
v0 = 5;
a = 3;

% Calculate the data to plot
t = linspace(0,10);
d = x0 + v0 * t + 0.5 * a .* t.^2;
v = v0 + a * t;

% Plot the distance on the left axis
figure(1);
yyaxis left;
plot(t,d,'b-');
ylabel('\bfDistance (m)');

% Plot the velocity on the right axis
yyaxis right;
plot(t,v,'r--');
ylabel('\bfVelocity (m/s)');

% Add title and x axis
title('\bfPlot of Distance and Velocity vs time');
xlabel('\bfTime (s)')'
grid on;

