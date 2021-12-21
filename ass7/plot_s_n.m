function [] = plot_s_n(num1,num2,tau)
%plot 2 graphs on the same figure
Ts=linspace(-tau/2,tau/2,1000); %Time Sample = x
sn1=s_N(num1,tau,Ts);   %y1
sn2=s_N(num2,tau,Ts);   %y2
figure;
plot(Ts,sn1,'DisplayName',"S" + num1 + "(t)");  %plot(x,y1)
hold on
plot(Ts,sn2,'DisplayName',"S" + num2 + "(t)");  %plot(x,y2)
legend
hold off
end

