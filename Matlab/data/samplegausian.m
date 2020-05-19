% x = samplegausian(N, mu, sigma) uses a mean mu and a standard deviation sigma
% to generate a gaussian distribution in X.
%
% Inputs:
% N         number of instances.       
% mu        mean of the distribution.             
% sigma     standard deviation of the distribution.             
%
% Outputs:
% x         sample from the distribution.    (N x 1 vector with floating point numbers between 0 and 1 ).
%
% Copyright (C) Daphne Koller, Stanford Univerity, 2012
function x = samplegausian(N, mu, sigma)
% 
mu = mu(:);
R = chol(sigma);
for i = 1:N
    x(i,:) = mu' + (R'*randn(size(mu)))';
end

end