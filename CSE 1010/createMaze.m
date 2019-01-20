%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function createMaze
% Takes in a matrix of all
% zeroes then modifies it to
% the specifications of the provided
% map given to us. Rows numbers
% represent room numbers, columns
% represent doors.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function maze = createMaze(x) % start function %

maze = x; % creates new matrix to be modified %
maze(5,3) = 1;
maze(5,4) = 9;
maze(5,2) = 6;
maze(9,3) = 5;
maze(9,2) = 10;
maze(1,4) = 5;
maze(6,3) = 2;
maze(6,1) = 5;
maze(2,4) = 6;
maze(2,2) = 3;         % modified matrix to match map %
maze(3,1) = 2;
maze(3,4) = 7;
maze(3,2) = 4;
maze(4,1) = 3;
maze(4,4) = 8;
maze(8,3) = 4;
maze(8,1) = 7;
maze(7,3) = 3;
maze(7,2) = 8;
maze(7,4) = 10;
maze(10,3) = 7;
maze(10,1) = 9;

end % end function %