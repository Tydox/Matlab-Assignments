%% ex4 - DONE
function func4(x,a)
% arg: x = vector of xi points, a = radius
%   Draws circle

theta=linspace(0,2*pi,360);
AX=a*cos(theta);
AY=a*sin(theta);
plot(AX,AY);
axis('tight');

end

