% Question 3, slide 18 and question 4, slide 30
% plot_switch:
%   0 - show plots interactively
%   1 - save plots to disk

plot_switch = 0;        % Change me

files = dir('*.csv');               
num_files = size(files,1);
subj1_data = zeros([num_files, 40]);

% Iterate over all the files that have a csv file ending.
for idx = 1:num_files
    
    % Get the file name of this iteration
    file_name = sprintf('inflammation-%02d.csv', idx); 
    disp(['Analyzing ', file_name])
    patient_data = csvread(file_name);
    
    % Index the data from the first subject into an array that contains
    % only subject 1's data from each file.
    subj1_data(idx, :) = patient_data(1, :);
    
    disp(['Maximum inflammation: ', num2str(max(patient_data(:)))]);
    disp(['Minimum inflammation: ', num2str(min(patient_data(:)))]);
    disp(['Standard deviation: ', num2str(std(patient_data(:)))]);
    
    if plot_switch == 1             
        figure('visible', 'off')    
    else                            
        figure('visible', 'on')     
    end                             
    
    % 1 by 3 subplots of the mean, max, and min inflammation
    ave_inflammation = mean(patient_data, 1);
    subplot(1, 3, 1);
    plot(ave_inflammation);
    ylabel('average')

    subplot(1, 3, 2);
    plot(max(patient_data, [], 1));
    ylabel('max')

    subplot(1, 3, 3);
    plot(min(patient_data, [], 1));
    ylabel('min')
    
    % Save a figure of the subplots for each file.
    print(sprintf('inflammation_data-%02d', idx),'-dpng') %Saves a different figure at each loop
end
