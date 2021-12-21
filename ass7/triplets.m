function triplets(text)
%TRIPLETS: prints up to 3 chars per row

size = length(text);
for i=1:3:size
    if(i+2<=size)
    fprintf('Lines [%d-%d]:\t%s %s %s\n',i,i+2, text(i), text(i+1),text(i+2));
    elseif (i+1<=size)
    fprintf('Lines [%d-%d]:\t%s %s\n',i,i+1, text(i), text(i+1));
    elseif (i<=size)
    fprintf('Lines [%d]:\t\t%s\n',i, text(i));

    end
end

