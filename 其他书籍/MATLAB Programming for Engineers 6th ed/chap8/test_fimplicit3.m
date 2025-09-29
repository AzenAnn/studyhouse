figure(1);

f = @(x,y,z) x.^2 + y.^2 - z.^2;

fimplicit3(f);
title(['\bffcontour Plot of the Function ' func2str(f)]);
