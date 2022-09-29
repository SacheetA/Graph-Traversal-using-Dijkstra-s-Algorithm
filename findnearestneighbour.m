function N = findnearestneighbour(i,D)
%Finds all nearest neighbours for a given node
p = 1;
for l=1:length(D)
    if (D(i,l) ~= inf && D(i,l) ~= 0)
        N(p) = l;           %equated to index and not number '1'
        p = p+1; 
    end
end
end