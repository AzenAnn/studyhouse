% Read the input data
load magnetization_curve.dat
if1  = magnetization_curve(:,1);
vout = magnetization_curve(:,2);

% Plot the data points as blue crosses with no 
% connecting lines.
plot(if1,vout,'x');
