figure(1);

f = @(x,y) exp(-(abs(x)+abs(y)));

fsurf(f,[-2 2]);
title(['\bffsurf Plot of the Function ' func2str(f)]);
