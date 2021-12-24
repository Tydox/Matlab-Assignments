function plotSound(dial,fs)
figure;
ts = (1:length(dial))./fs;
tiledlayout(1,1, 'Padding', 'none', 'TileSpacing', 'compact'); 
nexttile;
% plot the whole audio wave
stem(ts,dial,'marker','none','color','g','LineWidth',1);
set(gca,'color','k');
set(gcf, 'WindowState', 'maximized');
set(gcf, 'Name', 'DTMF Analyzer','NumberTitle','off')

%plot and mark the silent moments in red
hold on 
tol = abs(dial)==0; %tolerance for silent markers
stem(ts(tol),dial(tol),'marker','_','color','r','LineWidth',1);

grid on
ax = gca;
ax.GridColor = 'w';
xlim([-0.01,ts(end)]);
ylim([-1.4,1.4]);
legend on 
legend('Audio Wave')
legend TextColor w
xlabel('Time [sec]');
ylabel('Frequency [Hz]');
title('Dual Tone Multi Frequency');

hold off
end

