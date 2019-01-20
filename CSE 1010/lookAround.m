%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function lookAround
% A function that takes in the 
% spot in the maze, the room the
% user is in, and the parts in the maze.
% Checks how many doors are in the room,
% if any parts are in the room, and reports
% the findings to the player.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function lookAround(maze, room, parts) % start function %

if room < 1 % checks if inside the maze %
    
    fprintf('\nYou are outside the maze.\n');
    
elseif parts(room) > 0 % checks if part is in the room and displays to user if there is as well as how many doors are in the room %
    
    fprintf('\nPart %d is in the room.', parts(room));
    
    fprintf('\nThere are %d door(s) in the room.\n', sum(maze(room,:) > 0));
    
else % no parts in the room, still displays amount of doors %
    
    fprintf('\nThere are no parts in the room.');
    fprintf('\nThere are %d door(s) in the room.\n', sum(maze(room,:) > 0));

end % end function %