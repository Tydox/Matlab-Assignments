function [dial_vec] = atdt_real(str,Ld,Ls)
%ATDT str = number, Ld = loud, Ls = space
dial_vec = 0;
for i=1:length(str)
    if (str(i) =='-' || str(i) =='+' || str(i) ==' ')
        continue
    end

    dial_vec = [dial_vec, single_dtmf(str(i),fix(8000*Ld(i)))];    %add button tone 200ms
    dial_vec = [dial_vec, single_dtmf('m',fix(8000*Ls(i)))];    %add silent tone 50ms

end


end

