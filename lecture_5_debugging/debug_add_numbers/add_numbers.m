function [pos_total, pos_nums, neg_total, neg_nums] = add_numbers(input_arr,rand_arr_sz,shuffle)
% Adds the all the positive numbers together and all the negative numbers
% together of an input array is given.  If an input array is not given (and
% is instead replaced by an empty array [], a random array size can be 
% inputted, and shuffle can be set to 1 if you want to reinitialize the
% random number generator and 0 if you don't want to.
%
% Outputs: the positive total (pos_total), the negative total (neg_total),
% all the positive numbers (pos_nums) and all the negative numbers
% (neg_nums)

pos_total = 0;
neg_total = 0;

% Input array or array of random numbers?
if isempty(input_arr)
    numbers = random_integers(rand_arr_sz);
else
    numbers = input_arr;
end

pos_nums = -1*ones(1,length(numbers));
neg_nums = ones(1,length(numbers));

% Add the positive numbers together and add the negative numbers together
for idx = 1:length(numbers)
    n = numbers(idx);
    if n >= 0
        [pos_total, pos_nums] = add_same_sign(pos_total, pos_nums, idx, n);
    else
        [neg_total, neg_nums] = add_same_sign(neg_total, pos_nums, idx, n);
    end
end

% Make sure pos_nums only includes the positive numbers.  Same with
% neg_nums
pos_nums = pos_nums(pos_nums ~= -1);
neg_nums = neg_nums(neg_nums ~= 1);

disp(['sum of positive values: ', num2str(pos_total)]);
disp(['sum of negative values: ', num2str(neg_total)]);
