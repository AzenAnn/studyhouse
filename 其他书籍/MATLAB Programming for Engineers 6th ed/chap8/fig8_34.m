figure(1);
z = peaks();
surf(z);

title('\bfPeaks with Default Colormap');
print('fig8-34a.png','-dpng','-r600');

colormap(spring);
title('\bfPeaks with Spring Colormap');
print('fig8-34b.png','-dpng','-r600');

colormap(copper);
title('\bfPeaks with Copper Colormap');
print('fig8-34c.png','-dpng','-r600');

