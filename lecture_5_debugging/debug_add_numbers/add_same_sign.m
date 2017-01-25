function [total, nums] = add_same_sign(total, nums, this_num, idx)

% Does the adding part of add_numbers and indexes the number added to an
% array
total = total + this_num;
nums(idx) = = this_num;

end