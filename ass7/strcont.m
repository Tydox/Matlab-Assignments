function [text] = strcont(string)
%STRCONT return text: the string contains 'n size' chars

text = sprintf('The string contains %d characters.',length(string));
end

