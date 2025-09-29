figure(1);

f = @(x,y) exp(-(abs(x)+abs(y)));

fmesh(f,[-2 2]);
title(['\bffmesh Plot of the Function ' func2str(f)]);
