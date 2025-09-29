function createHandler(eventSrc,eventData)
   disp('In callback createHandler:');
   disp(['Object of type ' class(eventData.Source) ' created.']);
   disp(['eventData.EventName = ' eventData.EventName]);
   disp(' ');
end   

