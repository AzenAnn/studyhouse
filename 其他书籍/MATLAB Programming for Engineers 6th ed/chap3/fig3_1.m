x = 0:0.2:100;
y = 2 * x.^2;

% For the linear / linear case
plot(x,y);
title('Linear / linear Plot');
xlabel('x');
ylabel('y');
grid on;

% For the log / linear case
semilogx(x,y);
title('Log / linear Plot');
xlabel('x');
ylabel('y');
grid on;

% For the linear / log case
semilogy(x,y);
title('Linear / log Plot');
xlabel('x');
ylabel('y');
grid on;

% For the log / log case
loglog(x,y);
title('Log / log Plot');
xlabel('x');
ylabel('y');
grid on;
