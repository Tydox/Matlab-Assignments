function football(fileName)
%FOOTBALL Summary of this function goes here

[pname,lname,min_played,points,rebounds,assists] = textread(fileName, '%s %s %d %d %d %d','headerlines',1);
tb = table(pname,lname,min_played,points,rebounds,assists);
player = table2struct(tb);
bar([player.points] ./[player.min_played]);

set(gca, 'XTick', 1:length([player.lname]), 'XTickLabel',{player.lname}, 'XTickLabelRotation', 45);
title 'Player Score Per Minute'
end

