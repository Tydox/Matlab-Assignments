function [tone] = single_dtmf(button,N)
%SINGLE_DTMF Summary of this function goes here

phone = cell(5,4);
for i=1:3
phone{2,i+1}=num2str(i);
phone{3,i+1}=num2str(i+3);
phone{4,i+1}=num2str(i+6);
end
phone{5,2} = '*';
phone{5,3} = '0';
phone{5,4} = '#';
tmp = {0;679;770;852;941};
[phone{1:end,1}] = deal(tmp{1:end,1});
tmp = {'m';1209;1336;1477}';
[phone{1,1:end}] = deal(tmp{1,1:end});

fs = 8000;  %frequency
Ts = 0:N-1;    %time sampling
Ts=Ts./fs;
A=0.5;
B=0.5;
tone1 = 0;
tone2 = 0;


if(button ~= 'm') %button = 0 is a flag for silence
  % button=0..9,#,* for a special calculated tone
    [row,col] = find(strcmp(phone,button));
    tone1 = phone{row,1};
    tone2 = phone{1,col};
end

sound = @(t) (A.*cos(2*pi*tone1*t)+B.*cos(2*pi*tone2*t));  %generate sound sample
tone = sound(Ts);
if(button == 'm') %button = 0 is a flag for silence
    tone = tone -1;
    return;
end

end

