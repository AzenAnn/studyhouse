f = @(x,y) exp(-(abs(x)+abs(y)));

fmesh(f,[-2 2]);
title(['\bffcontour Plot of the Function ' func2str(f)]);
