%% ex2 - DONE
function [sumd] = func2(vec)
%argument: randi 0-9 vec
%return: sumd - total amount of double digits
sumd = 0;
for num=0:1:9
    duo=sum(vec==num);
    div=floor(duo/2);
sumd = sumd + div;
end
end