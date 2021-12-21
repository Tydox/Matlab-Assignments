%% ex1 - DONE

function [avg,error] = func1(Vector)
%argument: vector of random numbers
%returns: avg and error values

v = Vector;
avg=sum(v)/ length(v);
error = sqrt(sum((v-avg).^2)/length(v));
end