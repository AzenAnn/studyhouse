figure(1);
t = 0:0.1:3.6;
a = -9.8;
v = 15;
y = 0.5.*a.*t.^2 + v .* t + 10;
y = y + 0.3 * randn(size(y));
scatter(t,y);
grid on;
save samples.mat t y
