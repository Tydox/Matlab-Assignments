function [text] = getMatrixSize(matrix)
%GETMATRIXSIZE returns size of matrix;

msize = size(matrix);
text = sprintf('Matrix Size: row:%d x col:%d\n',msize(1),msize(2));

end

