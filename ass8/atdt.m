function [dial_vec] = atdt(str)
%ATDT 
fs=8000;
dial_vec = 0;
for i=1:length(str)
    if (str(i) =='-' || str(i) =='+' || str(i) ==' ')
        continue
    end

    dial_vec = [dial_vec, single_dtmf(str(i),1600)];    %add button tone 200ms
    dial_vec = [dial_vec, single_dtmf('m',400)];    %add silent tone 50ms
end 
plotSound(dial_vec,fs)
end

