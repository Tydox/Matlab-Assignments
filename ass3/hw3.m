%% ex1

v=[1:1:5;6:1:10;11:1:15;16:1:20;21:1:25]
mean(v)
mean(v,2)
%% ex2

v1=linspace(0.1,0.6,4)
v2=linspace(1,0.2,4)
v3=linspace(0.5,0.1,4)
v4=linspace(0.9,0.3,4)
c=[v1;v2;v3;v4]
a=c(1,:)
b=c(:,1)
d=c(2:3,2:3)
c(2,:)=0
%% ex3

vrng=rand(1,5)
vrng(vrng<0.5)=0

%% ex4

n=5
v1=(1:1:4)
v2=ones(size(v1,2),n)
Mr=v1'.*v2
%% ex5

v1=[-2,6,2;1,-7,1;3,9,4]
v1(1,:)=0
v1(:,3)=0

%% ex6

v1=(-1)*ones(1,20)
v1(1:2:end)=1
v2=(1:1:20)
v3=(v2.*v1)
%% ex7

t=linspace(0,2*pi,5)
y=plot(t,sin(t))
T=[0:0.1:2*pi]
y=plot(T,sin(T))
%% ex8

t=linspace(0,2*pi,100)
plot(t,sin(t),'r',t,cos(t),'b')
xlabel('X-AXIS')
ylabel('Y-AXIS')
legend('sin-wave','cos-wave')
text(pi,cos(pi),'cos(\pi)')
%% ex9

clf
x=[5,7.5,10,5]
y=[5,30,5,5]
line(x,y)
xlim([0,15])
ylim([0,30])
%% ex10

z=7+2i
magiZ=abs(z)
angleZ=angle(z)
b2=z
magniB2=sqrt(real(b2)^2+imag(b2)^2)
magniB22=sqrt(b2*conj(b2))
error=magniB2-magniB22
%% 
% 
% 
%