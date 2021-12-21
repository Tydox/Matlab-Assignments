function [s_n_vals] = s_N(N,tau,time_vec)
%S_N: calc series value at given time
k=-N:N;
ak = a_n_coefs(N); %generate Series Coefficients for a Square Wave
exps = ((1i*2*pi/tau).*k)'; %vector for exp variable
exps=exps.*time_vec;
exps=exp(exps);
s_n_vals = sum(real(ak.*exps));   %sum each time with given square wave
end