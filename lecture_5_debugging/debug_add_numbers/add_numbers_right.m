function [pos_total, pos_nums, neg_total, neg_nums] = add_numbers_right(input_arr,rand_arr_sz,shuffle)
pos_total = 0;
neg_total = 0;

if isempty(input_arr)
    numbers = random_integers(rand_arr_sz, shuffle);   % ommitted the shuffle input
else
    numbers = input_arr;
end

pos_nums = -1*ones(1,length(numbers));
neg_nums = ones(1,length(numbers));

for idx = 1:length(numbers)
    n = numbers(idx);
    if n >= 0
        [pos_total, pos_nums] = add_same_sign(pos_total, pos_nums, n, idx);   % switched n and idx
    else
        [neg_total, neg_nums] = add_same_sign(neg_total, neg_nums, n, idx);   % switched n and idx, changed neg_nums to pos_nums
    end
end

pos_nums = pos_nums(pos_nums ~= -1);
neg_nums = neg_nums(neg_nums ~= 1);

disp(['sum of positive values: ', num2str(pos_total)]);
disp(['sum of negative values: ', num2str(neg_total)]);
