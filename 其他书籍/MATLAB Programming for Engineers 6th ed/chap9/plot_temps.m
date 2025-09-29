	% Create datetime array
	hour = 12;
	day = 1:7;
	month = 2;
	year = 2018;
	dates = datetime(year,month,day,hour,0,0);
	
	% Add measurements
	temp = [25 29 33 27 39 22 26];
	
	% Plot the results
	figure(1);
	plot(dates,temp,'bo','LineWidth',2);
	title('\bfNoontime Temeperatures');
	xlabel('\bfDate');
	ylabel('\bfTemperature (deg C)');

