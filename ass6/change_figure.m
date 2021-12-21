%% ex1 done

function [h_figure] = change_figure()
%returns: figure handler
x=(-2*pi:0.01:2*pi);        %set tick points
plot(x,cos(x),x,sin(x));    %A - plot sin,cos on the same graph
legend('cos(x)','sin(x)');  %set legend to know what func is what
%xticks(-2*pi:0.5*pi:2*pi);  %set ticks to half pi
%xticklabels({'-2\pi','-1.5\pi','-1\pi','-0.5\pi','0','0.5\pi','1\pi','1.5\pi','2\pi'});
disp('All Figure AXES Properties:');
disp(get(gca));             %B - print to cmd wind AXES properties
disp('All Figure Properties:');
disp(get(gcf));             %C - print to cmd wind FIGURE properties
kid = get(gca,'children');  %get plotted functions pointer
set(kid(1),'linewidth',3,'color','r');      %D - change sin color->red, linewidth->3
set(kid(2),'linewidth',4,'color','g');      %E - change cos color->green, linewidth->4
set(gca,'xgrid','on');      %F - add X axis grid lines
set(gca,'ygrid','on');      %G - add Y axis grid lines
set(gcf,'numbertitle','off');       %H - remove window title
set(gcf,'name','Sine & Cosine');    %I - set window title to Sine&Cosine
set(gcf,'color',[1 0 1]);       %J - change plot background color to purple
set(gcf,'color','y');       %K - change plot background color to yellow
set(gca,'ycolor','b','xcolor','g');     %L - set x axis color-> green, y axis color->blue
set(gca,'fontsize',12);     %M - set font size of axis->12
set(gca,'fontname','times');        %N - set font of axis->times
lh = legend;        %get legend figure
lh.Position(1) = 0.5 - lh.Position(3)/2;        %O - set legend pos to top mid
set(gca,'xlim',[0,4*pi]);       %P - set x axis range to 0-4pi
set(gca,'xscale','log');        %Q - set x scale to logarithmics 
h_figure=get(gcf);          %return figure handler
end

