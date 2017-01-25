function [rand_int] = random_integers_right(number, shuffle)

% Reinitialize the random number generator
if shuffle == 1
    rng('shuffle'); % misspelled shuffle
end

% Generate random integers
rand_int = floor(10*randn(1,number));

end