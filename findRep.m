function [alpha, beta] = findRep(s)

% function that finds the H-representation of mode s in terms of Q_i

% arguments:
% s: mode

% returns:
% alpha (n-1 X 1): i -> alpha(i)
% alpha(i) = -1,0,1 for unused, H^c_alpha_i, H_alpha_i
% beta (n X 1): i -> beta(i)
% beta(i) = -1,0,1 for unused, H^c_beta_i, H_beta_i

n = length(s) + 1;

alpha = -1 * ones(n-1, 1);
beta = -1 * ones(n, 1);

for i = 1:n-1
    switch s(i)
        case 1
            alpha(i) = 1;
            beta(i+1) = 1;
        case 2
            beta(i) = 1;
            beta(i+1) = 0;
        case 3
            alpha(i) = 0;
            beta(i) = 0;
    end
end