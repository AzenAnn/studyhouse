figure(1);

f = @(x,y) sin(x).^2 + cos(y).^2;
fcontour(f);
title(['\bffcontour Plot of the Function ' func2str(f)]);