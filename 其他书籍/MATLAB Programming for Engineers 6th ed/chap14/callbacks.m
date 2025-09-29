% Menu selected function: OpenMenu
function FileOpen(app, event)

   % Get the file to open
   [filename, pathname] = uigetfile('*.dat','Load Data');
   if filename ~= 0

      % Open the input file
      filename = [pathname filename];
      [fid,msg] = fopen(filename,'rt');

      % Check to see of the open failed.
      if fid < 0 

      % There was an error--tell user.
      str = ['File ' filename ' could not be opened.'];
      title = 'File Open Failed';
      uialert(app.UIFigure,str,title);

   else

      % File opened successfully. Read the (x,y) pairs from 
      % the input file.  Get first (x,y) pair before the
      % loop starts.
      [in,count] = fscanf(fid,'%g',2);
      ii = 0;

      while ~feof(fid)
         ii = ii + 1;
         x(ii) = in(1);
         y(ii) = in(2);

         % Get next (x,y) pair
         [in,count] = fscanf(fid,'%g',2);
      end

      % Data read in.  Close file.
      fclose(fid);

      % Now plot the data.
      app.hLine = plot(app.UIAxes,x,y,'LineWidth',3);
      xlabel(app.UIAxes,'x');
      ylabel(app.UIAxes,'y');
      grid(app.UIAxes,'on');

   end            
end

% Menu selected function: ExitMenu
function FileExit(app, event)
    close(app.UIFigure);
end

% Menu selected function: SolidMenu
function EditSolid(app, event)
    app.hLine.LineStyle = '-';
end

% Menu selected function: DashedMenu
function EditDashed(app, event)
    app.hLine.LineStyle = '--';
end

% Menu selected function: DottedMenu
function EditDotted(app, event)
    app.hLine.LineStyle = ':';            
end

% Menu selected function: DashDotMenu
function EditDashDot(app, event)
    app.hLine.LineStyle = '-.';            
end

