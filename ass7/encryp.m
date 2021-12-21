function [encryped_text] = encryp(text)
%ENCRYP
key = 2; %ID first number
ASCII_CHARS = double(char(text)) + key; %turn char array into ascii vector
text_size=length(text);

for i=1:text_size
     if (ASCII_CHARS(i) - key) >= 97 && (ASCII_CHARS(i) - key) <= 122  %z=122 
        if ASCII_CHARS(i)>122    
         ASCII_CHARS(i) = ASCII_CHARS(i) - 26; %NORMALIZE BACK TO SMALL CHARS
        end
 elseif (ASCII_CHARS(i) - key) >= 65 && (ASCII_CHARS(i) - key) <= 90      %Z=90
         if ASCII_CHARS(i)>90   
          ASCII_CHARS(i) = ASCII_CHARS(i) - 26; %NORMALIZE BACK TO BIG CHARS
         end     
     elseif ~((ASCII_CHARS(i) - key) >= 65 && (ASCII_CHARS(i) - key) <= 90) || ~((ASCII_CHARS(i) - key) >= 97 && (ASCII_CHARS(i) - key) <= 122)
            ASCII_CHARS(i) = ASCII_CHARS(i) - key; %NORMALIZE BACK TO SYMBOLS
     end

end

encryped_text = char(double(ASCII_CHARS));
end

