figure(1);

% Anonymous function
h = @(theta) 1 + cos(theta);

ezpolar(h,[0 2*pi]);
title('\bfSample ezpolar Plot');
