figure(1);

f = @(x,y) x .^2 - y .^2 - 1;

fimplicit(f, [-5 5], 'b-', 'LineWidth', 2);
title(['\bfPlot of function ' func2str(f)]);
xlabel('\bfx');
ylabel('\bfy');
