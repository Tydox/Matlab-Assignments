function plotSound(dial,fs)
figure
ts = (1:length(dial))./fs;
tiledlayout(1,1, 'Padding', 'none', 'TileSpacing', 'compact'); 
nexttile;
stem(ts,dial,'marker','none','color',[0, 1, 0]);
set(gca,'color','k');
set(gcf, 'WindowState', 'maximized');
set(gcf, 'Name', 'DTMF Analyzer','NumberTitle','off')

hold on
%stem(ts,dial,'marker','none','color',[0.5, 0, 0.5],'LineWidth',10)
%hold on 
%stem(ts,mod(dial,-0.02),'marker','none','color',[0.5, 0, 0.5],'LineWidth',10)
%ylin(0,'Color',)
yl = yline(0,'-','LineWidth',1.5);
yl.LabelHorizontalAlignment = 'left';
yl.Color = 'y';
grid on
ax = gca;
ax.GridColor = 'w';
xlim([-0.04,ts(end)]);
ylim([-1.4,1.4]);
legend on 
legend('Audio Wave','0 [db]')
legend TextColor w
xlabel('Time [ms]');
ylabel('Frequency [Hz]');
title('Dual Tone Multi Frequency');
%xtick(1)
end

