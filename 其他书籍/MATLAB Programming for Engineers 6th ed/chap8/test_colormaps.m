figure(1);
z = peaks();
surf(z);

title('\bfPeaks with Default Colormap');
print('peaks_default_colormap.png','-dpng','-r600');

colormap(spring);
title('\bfPeaks with Spring Colormap');
print('peaks_spring_colormap.png','-dpng','-r600');

colormap(copper);
title('\bfPeaks with Copper Colormap');
print('peaks_copper_colormap.png','-dpng','-r600');

