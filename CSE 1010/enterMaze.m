%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function enterMaze
% Takes in the room the user is in
% and returns a new room number.
% Outside the maze defaults to room
% 0. Allows the user to re-enter the
% maze to room 1.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function room = enterMaze(room)

if room < 1 % checks if outside the maze %
    
    fprintf('\nEntering maze.\n');
    fprintf('Entering room 1.\n');
    
    room = 1; % user placed in room 1 of maze %
    
else % user already in maze %
    
    fprintf('\nYou are already inside the maze.\n');
    
end % end function %