%% ex5 - DONE
function [series_sum] = func5(uno,delta,length)
%arg: first series value, delta between every 2 numbers, length of series
%return: the sum of the series

endo=uno+(length-1)*delta;
series_sum=((uno+endo)/2)*length;
end

