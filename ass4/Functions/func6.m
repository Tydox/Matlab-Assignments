%% ex6 - DONE
function [prim_vect] = func6(vec)
%arg: array of numbers
%return: vector of all valid prime numbers in array

xs=length(vec);
v1=zeros(xs,1);
for i=1:xs
    tmp=vec(i);
    v1(i)=checkprimo(tmp);
end
prim_vect=vec.*v1';
prim_vect(prim_vect==0)=[];
end

function [bool] = checkprimo(x)
y=2;

if x==1
 bool =1;
 return
end
while rem(x,y)~=0
    y = y + 1;
end

if y == x
    bool=1;
else
    bool=0;

end

end


