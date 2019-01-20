%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function build
% A function that takes in
% the room the user 
% is in as well as the parts they have
% collected and returns the state of
% the machine being built or not.
% Checks if the user
% has gathered all the parts, then
% builds the machine, allowing
% them to escape the maze. Displays
% to the user whether or not they 
% have built the machine.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function built = build(room, collected) % start function %

if room < 1 % checks if outside maze %
    
    fprintf('\nYou need to be inside the maze to build.\n');
    
    built = 0; % machine not built %
    
elseif collected == 3 % checks if all parts are collected %
    
    fprintf('\nMachine built!\n');
    
    built = 1; % machine has been built %
    
else % not all parts collected %
    
    fprintf('\nYou need to collect more parts.\n');
    
    built = 0; % machine not built %

end % end function %