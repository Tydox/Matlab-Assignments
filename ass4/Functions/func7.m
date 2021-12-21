%% ex7 - DONE
function [avg] = func7(array,n)
%arg: array of nums, n random val
% return: avg\mean of array
v1=array(1,1:n);
avg = sum(v1./n);
end

