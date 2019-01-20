%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function statusPlayer
% A function that takes in the room the 
% user is in, how many parts they have
% collected, the time that has passed since
% starting the game, and if the machine is 
% built or not. No return.
% Checks and informs the user of the status
% of their game. How many parts they have,
% if the machine is built, the room they
% are in, as well as the time they have left
% to escape the maze.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function statusPlayer(room, collected, tElapsed, built) % start function %

if room < 1 % checks if user is inside the maze %
    
    fprintf('\nYou are outside the maze.\n');
    
else % if inside the maze %
    
    fprintf('\nYou are in room %d.\n', room);
    
end; % end else if chain %

if built == 1 % checks if machine is built %
    
    fprintf('\nYou have built the machine.\n');
    
elseif collected == 3 % if all parts collected %
    
    fprintf('\nYou have collected parts 1 through 3.\n');
    
elseif collected == 2 % if 2 parts collected %
    
    fprintf('\nYou have collected parts 1 and 2.\n');
    
elseif collected == 1 % if 1 part collected %
    
    fprintf('\nYou have collected part 1.\n');
    
elseif collected == 0 % if no parts collected %
    
    fprintf('\nYou have collected no parts.\n');
    
end; % end else if chain %
    
fprintf('\nTime left: %6.2f seconds.\n', 300 - tElapsed); % displays the remaining time to escape %

end % end function %