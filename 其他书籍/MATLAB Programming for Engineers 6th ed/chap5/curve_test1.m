t = 0:1.0:10;
y = exp(-0.5*t) .* sin(t);

for ii = 1:length(t);
   fprintf('%6.1f  %6.4f\n',t(ii),y(ii));
end


figure(1);
plot(t,y);