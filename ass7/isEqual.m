function [text] = isEqual(x,y)
%ISEQUAL check if X==Y, return in text 'true' if equal otherwise 'false'
if(x==y)
    text = sprintf('Equal!\t x=%d == y=%d',x,y);
else
    text = sprintf('Not Equal!\t x=%d =/= y=%d',x,y');
end

