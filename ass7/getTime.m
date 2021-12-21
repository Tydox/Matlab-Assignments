function [text] = getTime(time)
%GETTIME: give hour xx:xx and return text The Time is xx:xx am\pm

hh = str2double(time(1:2));
mm = str2double(time (3:4));

if hh > 12
    text = sprintf('The Time is %.2d:%.2d PM',mod(hh,10) - 2,mm);
else
    text = sprintf('The Time is %.2d:%.2d AM',hh,mm);

end


