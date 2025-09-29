figure(1);

x = 2:2:10;
y = [1 2 1;
     4 1 3;
     8 2 6;
     2 8 1;
     3 3 2];
bar(x,y,'stacked');
title('\bfBar Plot with Stacked Subelements');
xlabel('\bfx');
ylabel('\bfy');
