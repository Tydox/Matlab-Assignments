%% ex1 - DONE
function [x1, y1, x2, y2] = gen_sig ()
%returns: functions values vectors x1,y1,x2,y2
t=linspace(-6,6,1000);
n=0:6;

x11 = @(t) (t<-4).*0 + (t>=-4 & t<3).*(t+2) + (t>=3).*(t-2);
y1=x11(t-1);
x1=x11(t);

x22 = @(n) (n<2).*0 + (n>=2 & n<4).*(2.*n-4) + (n>=4).*(4-n);
y2=x22(n+1);
x2=x22(n);

subplot(2,2,1);
plot(t,x1);
xlabel('t');
ylabel('x(t)');
title('a');
xticks(-6:6);
yticks(-6:6);

subplot(2,2,3);
plot(t,y1);
xlabel('t');
ylabel('y(t)');
title('b');
xticks(-6:6);
yticks(-6:6);

subplot(2,2,2);
stem(n,x2,'filled');
xlabel('n');
ylabel('x[n]');
title('c');
xticks(0:6);

subplot(2,2,4);
stem(n,y2,'filled');
xlabel('n');
ylabel('y[n]');
title('d');
xticks(0:6);
yticks(-3:2);

end