%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function moveDirection
% Takes in the user's command,
% the maze, and the romm the user
% is in and returns a new room.
% Checks if a door in the specified 
% direction the user wants to go exists,
% then moves them into that new room.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function room = moveDirection(command, maze, room) % start function %

if room < 1 % checks if inside the maze %
    
    fprintf('\nYou are outside the maze. You have to enter the maze.\n');

elseif strfind(command, 'west') > 0 & maze(room, 1) > 0 % if user wants to go left, checks if door exists and moves %
    
    fprintf('\nEntering room %d.\n', maze(room,1));

    room = maze(room,1); % moves user to new room %
    
elseif strfind(command, 'east') > 0 & maze(room,2) > 0 % if user wants to go right, checks if a door exists and moves %
  
    fprintf('\nEntering room %d.\n', maze(room, 2));
    
    room = maze(room,2); % moves user to new room %
    
elseif strfind(command, 'north') > 0 & maze(room,3) > 0 % if user wants to go up, checks if door exists and moves %
    
    fprintf('\nEntering room %d.\n', maze(room,3));
    
    room = maze(room, 3); % moves user to new room %
    
elseif strfind(command, 'south') > 0 & maze(room,4) > 0
    
    fprintf('\nEntering room %d.\n', maze(room,4));
    
    room = maze(room, 4); % moves to new room %
    
else % no door exists in desired direction %
    
    fprintf('\nThere is no door. You are in room %d.\n', room);
    
end; % end elseif chain %

end % end function %