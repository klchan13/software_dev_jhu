% Question 1: Slide 18 of lecture 4
% Displays the word aluminum one letter at a time.

word = 'aluminum';

for l_idx = 1:length('aluminum')    % Index over each letter
    disp(word(1:l_idx))             % Index into the string array from the
                                    % beginning of the string all the way
                                    % up to the current index of the loop
end