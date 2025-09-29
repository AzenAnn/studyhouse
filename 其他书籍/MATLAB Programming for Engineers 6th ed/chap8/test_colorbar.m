figure(1);
z = peaks();
surf(z);
colorbar;

title('\bfPeaks with Colorbar');
print('peaks_with_colorbar.png','-dpng');

