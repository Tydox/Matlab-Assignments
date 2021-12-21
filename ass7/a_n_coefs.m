function [vec] = a_n_coefs(N)
%A_N_COEFS Get Num N>=0, return a_k coeffs, size 2N-1
vec=zeros(2*N+1,1);
for k=1:2:N
    vec(N+1+k) = sin(0.5*k*pi)/(k*pi); %calc ak k>0
    vec(N+1-k) = sin(0.5*k*pi)/(k*pi);  %calc ak k<0
end

vec(N+1) = 0.5; %calc ak k=0
end