%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function collectPart
% This function takes in the
% parts, how many parts have,
% been collected, and the room
% the player is in and returns the new state of which rooms 
% have parts and how many have been collected. 
% Lets the user collect a part
% in the room and then modifies the room
% to no longer contain a part. Also
% checks to make sure the user finds the parts in order.
% Tells the user which part they need to collect
% to collect the current part in the room.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [parts, collected] = collectPart(room, collected, parts) % start function %
    
if room < 1 % checks if outside maze %
    
    fprintf('\nYou must be inside the maze to collect parts.\n');

elseif parts(room) == 0 % no part in room %
    
    fprintf('\nRoom does not have a part in it.\n');
    
elseif parts(room) - 1 ~= collected % checks if previous part has been collected %
    
    fprintf('\nYou have not collected part %d yet.\n', parts(room) - 1);
    
else % collects part and adds to collected total %
    
    fprintf('\nPart %d collected.\n', parts(room));
    
    collected = collected + 1; % collected parts %
    
    parts(room) = 0; % no longer part in the room %
    
end; % end else if chain %

end % end function %