function [rand_int] = random_integers(number, shuffle)

% Reinitialize the random number generator
if shuffle == 1
    rng('shufle');
end

% Generate random integers
rand_int = floor(10*randn(1,number));

end