function [path, path_length] = Dijkstra(start, goal, D)
%Implementation of Dijkstra's algorithm

V = (1:9)';                            %Vertex
CSV = Inf(9,1);                        %Cost to start vertex
PV = zeros(9,1);                       %Preceding vertex
visited = int32.empty;                 %Created an empty visited array
CSV(start) = 0;                        %cost to start vertex set to zero
queue = start;                         %queue


while length(queue) > 0                %till queue is empty

NN = findnearestneighbour(queue(1), D);            %Nearest neighbours
X=int32.empty;

for i = NN
    
    if  ~ ismember(i,visited)               %to check if member is marked as visited
        X = [X, i];                         %if not visited, will be added to queue
    end
    
    if (CSV(queue(1))+D(queue(1),i)) < CSV(i)           %cost update if less than previous cost
           CSV(i) = CSV(queue(1))+D(queue(1),i);
           PV(i) = queue(1);
    end

end

queue = [queue, X];                         %elements may be repeated if not marked as visited upto this point
queue = unique(queue,'stable');             %to remove duplicate elements without sorting
visited = [visited, queue(1)];              %first element of queue is marked as visited
queue(1) = [];                              %first element of queue is removed

end


path_length = CSV(goal);        %Cost to goal
path = goal;

while goal ~= start
path = [path, PV(goal)];
goal = PV(goal);
end

path = fliplr(path);            %Path
end

