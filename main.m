clear all; clc;

%Adjacency Matrix D
P = [5 inf inf inf inf inf inf 3 10 inf inf inf inf 4 inf inf 7 inf inf inf 2 1 inf 8 inf inf  2 inf inf inf 5 inf inf 1 inf inf];
D = squareform(P);


%Alternate (Manual)
D1=[0 5 inf inf inf inf inf inf 3;
    5 0 10 inf inf inf inf 4 inf;
    inf 10 0 inf 7 inf inf inf 2;
    inf inf inf 0 1 inf 8 inf inf;
    inf inf 7 1 0 2 inf inf inf;
    inf inf inf inf 2 0 5 inf inf;
    inf inf inf 8 inf 5 0 1 inf;
    inf 4 inf inf inf inf 1 0 inf;
    3 inf 2 inf inf inf inf inf 0];  

%Nearest neighbours 
%Finds all nearest neighbours for a given node
N = findnearestneighbour(5,D);

%Dijkstra's Algorithm
%Takes start, goal position and gives the shortest path and path length based on the
%adjacency matrix
Start = 1;
Goal = 7;
[Path Path_length] = Dijkstra(Start, Goal, D);
disp('Path:');
disp(Path);
disp('Path Length:');
disp(Path_length);

%Pendulum problem
tip_coordinate = eefpos(5,9,30,-60);

%-------End--------