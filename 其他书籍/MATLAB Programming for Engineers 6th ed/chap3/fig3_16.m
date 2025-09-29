figure(1);
x = 0:0.1:10;
y = zeros(length(x),4);
y(:,1) = sin(x);
y(:,2) = cos(x);
y(:,3) = sin(x).^2;
y(:,4) = cos(x).^2;
plot(x,y);
