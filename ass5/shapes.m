%% ex2 - DONE
function [ut,rt,rectt,traigt] = shapes(Ti,Tf)
%returns ut,rt,rectt,traigt
%plots UnitStep,Ramp,Triangle,Rectangle,CT & DT Ramp
t=Ti:0.01:Tf;
n=Ti:Tf;

u=@(t) (t<=0).*0 + (t>0).*1;
ut=u(t);
subplot(4,2,1);
plot(t,ut);
title('Unit Step');

r=@(t) (t<0).*0 + (t>=0).*t;
rt=r(t);
subplot(4,2,2);
plot(t,rt);
title('Ramp');

rect=@(t) (t>-0.5 & t<0.5).*1 + (t<-0.5 | t>0.5).*0;
rectt=rect(t);
subplot(4,2,3);
plot(t,rectt);
title('Rectangle');

triag=@(t) (t>=-1 & t<=1).*(1-abs(t)) + (t<-1 | t>1).*0;
traigt=triag(t);
subplot(4,2,4);
plot(t,traigt);
title('Triangle');

subplot(4,2,5:8);
plot(t,r(t),'Color','b');
hold;
stem(n,r(n),'Color','r');
xlabel('t, n');
ylabel('r(t), r[n]');
xticks(-2:10);
yticks(0:10);
legend('r(t)','r[n]','Location','best');
end

