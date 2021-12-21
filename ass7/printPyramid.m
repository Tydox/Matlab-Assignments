function printPyramid(text)
%PRINTPYRAMID Prints singular chars in increasing padding from ltr
txtsize=length(text);

for i=1:txtsize
    for j=1:(i+1)
    fprintf(' ');
    end
    fprintf('%s\n', text(i));
end

end
