figure(1);
f = @(x,y) x.*exp(-x.^2 - y.^2);
h = fcontour(f,[-2 2]);
