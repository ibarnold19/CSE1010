%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% mazeRunner
% Runs the combined function and game
% together and calls out to all
% function, the main runner of the game.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


clear % clears variable from previous runs %
clc % clears the command window %

win = 0; % to continue game until the user has won or run out of time %

x = zeros(10, 4); % default matrix of 0's %
maze = createMaze(x); % calls createMaze function to modifiy matrix to the map %
parts = [0 3 1 0 0 0 0 2 0 0]; % creates parts matrix to store which rooms have parts, columns represent room number %
collected = 0; % keep track of parts collected %
room = 0; % keep track of room user in %
tElapsed = 0; % time %
built = 0; % machine built or not %

% greeting to user as well as options in game, also to start game %
fprintf('Welcome to the Maze Adventure game!\nYour objective is to collect the three parts hidden the the maze, in order, build the machine, then escape.\nYou have five minutes to escape.\n\n\n');
fprintf('Available actions once in game:\n');
fprintf('Move (direction): you can move a certain direction to another room. Can move north, east, south, or west of location.\n');
fprintf('Enter maze: enters the maze.\n');
fprintf('Collect part: collects the part in the current room you are in.\n');
fprintf('Look: look around the current room you are in.\n');
fprintf('Status: displays which room you are in, the parts you have collected, if the machine is built, and the time remaining.\n');
fprintf('Build: builds the machine when all parts are collected.\n\n\n');
start = input('Enter start to begin: ', 's');
fprintf('\n');

% doesn't start until correct input is given %
while strcmpi(start, 'start') == 0
    
    start = input('Press 1 to begin: \n');
    
end;

tStart = tic; % starts timer for game %

while win == 0 % start while %
    
    fprintf('\nCommands:\nmove (direction)\nenter maze\ncollect part\nlook\nstatus\nbuild\n\n'); % commands for user %
    
    command = input('Enter a command: ', 's'); % asks user for command %
    
    if tElapsed == 300 % checks to see if time has run out then exists if it has %
        
        fprintf('\nTime''s up! Better luck next time.\n');
        
       break; % exit game %
        
    end; % end if %
    
    if room == 11 && built == 1 % checks if user outside maze with machine built, user wins %
        
        fprintf('\nCongratulations!! You win!!\n');
        
        break; % exits game %
        
    end; % end if %
        
    if strcmpi(command, 'enter maze') == 1 % if user wants to do enter maze command %
        
        room = enterMaze(room); % calls enter maze function %
       
    elseif strcmpi(command, 'look') == 1 % if user wants to do look command %
        
        lookAround(maze, room, parts); % calls look function %
        
    elseif strcmpi(command, 'status') == 1 % if user wants to do status command %
        
        statusPlayer(room, collected, tElapsed, built); % calls status function %
        
    elseif strcmpi(command, 'collect part') == 1 % if user wants to do collect part command %
        
        [parts, collected] = collectPart(room, collected, parts);v% calls collect part function %
        
    elseif strcmpi(command, 'build') == 1 % if user wants to do build command %
        
        built = build(room, collected); % calls build function %
        
    elseif strcmpi(command, 'move south') == 1 || strcmpi(command, 'move north') == 1 || strcmpi(command, 'move west') == 1 || strcmpi(command, 'move east') == 1 % if user wants to do move (direction) command %
        
        room = moveDirection(command, maze, room); % calls move (direction) function %
        
    else % no commands called %
        
        fprintf('\nInvalid command.\n');
        
    end; % end elseif chain %
        
    tElapsed = toc(tStart); % reset timer and adds on to total time %
    
end; % end program %
