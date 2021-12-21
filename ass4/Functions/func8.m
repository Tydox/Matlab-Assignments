%% ex8 - DONE
function [Ts] = func8()
%return: Time Sequence
n=(1:500);
f0=2;
f1=7;
y = @(n) cos(n*2*pi*f0/100) + cos(n*2*pi*f1/100);
xn = y(n);
xa = find(xn==0);
Ts=abs(xa(1)-xa(2)); %sub between 2 near peaks
end

