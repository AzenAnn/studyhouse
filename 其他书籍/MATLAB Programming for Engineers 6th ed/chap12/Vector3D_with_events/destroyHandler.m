function destroyHandler(eventSrc,eventData)
   disp('In callback destroyHandler:');
   disp(['Object of type ' class(eventData.Source) ' destroyed.']);
   disp(['eventData.EventName = ' eventData.EventName]);
   disp(' ');
end