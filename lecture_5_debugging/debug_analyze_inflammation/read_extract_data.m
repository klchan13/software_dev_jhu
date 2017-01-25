function [subj_data, patient_data] = read_extract_data(files, file_path, f_idx, file_inds, subj_data, subj)

% Takes in a cell array of the files, the file_path to the files,
% the current file index of this loop (f_idx), the current state of
% subj_data and the subject whose data we want to save in subj_data.

file_name = files{file_inds(f_idx)};
patient_data = csvread(file_name);
subj_data(subj, :) = patient_data(subj, :);

end