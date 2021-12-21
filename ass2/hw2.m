clear; clc
%% ex 1 - done

v1 = (1:1:9);
v2 = ones(1,9);
v3 = zeros(1,9);
v4 = (9:-1:1);
v5 = (-1)*ones(1,9);
v6 = v2;
v6(2:2:9)=0;
v6=v6+1;

A = [v1;v2;v3;v4;v5;v6]
B= [A(1,3:6);A(4,(3:6))]
C = A(2:2:end,:)
%% ex 2 - done

H=7.6;  %Height cm
D=3.4;  %Diameter cm
R=D/2; %Radius cm
Volume=pi*H*(R^2)
Area=2*pi*(R^2)+2*pi*R*H %total surface area
%% ex 3 - done

Tc=37; %Temp in celsius
Tf=(Tc*9/5)+32
%% ex4 - done

V = [1,-5,-14];
X1 = (-V(2)+sqrt(V(2)^2-4*V(1)*V(3)))/2
X2 = (-V(2)-sqrt(V(2)^2-4*V(1)*V(3)))/2
%% ex5 - done

V = [1, -5, 8, -4];
R=roots(V)
%% ex6 - done

n=4
x=0.5
nvec=(1:1:n)
xvec=linspace(x,x,n)
expvec=sum(((xvec.^nvec)./nvec).*(-1).^(nvec+1))
error=log(1+x) - expvec
%% ex7 - done  

n = 4;
b=4;
a=2;
dX =(b-a)/n
xi = zeros(2,n);
xi(1)=a;        xi(2)=xi(1)+dX;     xi(3)=xi(2);
xi(4)=xi(3)+dX; xi(5)=xi(4);        xi(6)=xi(5)+dX;
xi(7)=xi(6);    xi(8)=xi(7)+dX;
xi
xcm = [sum(xi(1:2,1))/2,sum(xi(1:2,2))/2,sum(xi(1:2,3))/2,sum(xi(1:2,4))/2]
in=dX*sum(xcm.^0.5)

%% ex8 - done

k=4 ; %series starts from 0 so for 5 items we want kend=4 and not 5
x=0.5;
kvec=(0:k)
xvec=linspace(x,x,k+1)
calc=(xvec.^kvec).*kvec
sumx=sum(calc)
error=x/(1-x)^2 - sumx
%% exe9 - done

n=4;
xvec=[83,56,68,41];
u=1/n * sum(xvec) %Expected value
variance=sum(1/n * (xvec-u).^2)
%% exe10 - done

k=5;
kvec=(0:1:k)
negv=(-1).*ones(1,k+1)
calc=sum(4.*(negv.^kvec ./(2.*kvec + 1)))
error=pi - calc