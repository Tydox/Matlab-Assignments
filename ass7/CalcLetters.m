function CalcLetters(FEED_ME_TEXT)
%CALCLETTERS - plots graph of most,second most, least used character
ASCII_CHARS = (32:1:126);
ASCII_TABLE = linspace(0,0,94);
ASCII_CONV = double(char(FEED_ME_TEXT));
for i=32:1:126
ASCII_TABLE(i-31) = length(find(ASCII_CONV==i));
end

CHAR_TABLE = num2cell(char((ASCII_CHARS)));

figure;
bar(ASCII_CHARS,ASCII_TABLE,'HandleVisibility','off')
xticks(32:1:126);
xticklabels(CHAR_TABLE);
xtickangle(0);
set(gcf,'Position',[100 100 1100 500]);
set(gca,'position',[.05 .05 .9 .9]);
ASCII_TABLE_Tmp=ASCII_TABLE;
ASCII_TABLE_Tmp(ASCII_TABLE_Tmp<=0)=inf;
[min_val,min_indx]=min(ASCII_TABLE_Tmp);
[max_val,max_indx]=max(ASCII_TABLE);

[max2_val,max2_indx]= max(ASCII_TABLE(ASCII_TABLE<max(ASCII_TABLE)));
hold on;
max1_h = bar(max_indx+31,max_val,'DisplayName',strcat('Most Used Char:','  "', char(max_indx+31),'"'));
hold on;
max2_h = bar(max2_indx+31,max2_val,'DisplayName',strcat('Second Most Used Char:','  "',  char(max2_indx+31),'"'));
hold on;
min_h = bar(min_indx+31,min_val,'DisplayName',strcat('Least Used Char:','  "', char(min_indx+31),'"'));
set(max1_h,'FaceColor','g')
set(max2_h,'FaceColor','y')
set(min_h,'FaceColor','r')
legend('Location','bestoutside');
hold off
end

