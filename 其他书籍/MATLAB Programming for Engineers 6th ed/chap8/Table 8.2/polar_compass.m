figure(1);
rng(0,'twister') % initialize random number generator
M = randn(20,20);
Z = eig(M);
h = compass(Z);

for ii = 1:length(h)
   h(ii).LineWidth = 2;
end

