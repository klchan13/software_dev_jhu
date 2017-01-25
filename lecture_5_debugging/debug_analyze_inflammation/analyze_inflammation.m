function [subj_data] = analyze_inflammation(file_inds, plot_switch, subj, order)
% Analyzes inflammation csv files.
%
% All inputs are arrays except order which is a cell array
%
% Inputs:
%   file_inds - file numbers to be analyzed.
%   plot_switch - plot switch indicator - 0 show plots interactively, 1 save plots to disk
%   subj - subject number of data to output
%   order - subplot order organized in cell array: 3 options: 'average',
%   'max' and 'min'
% Outputs:
%   subj_data - subject data for the specified subject for each of the
%   input file numbers.
%   a subplot of the average, max and min inflammation for each file
%   analyzed.

% Find all the csv files in the inflammation directory
files = dir('/Users/kimberly/matlab_data/inflammation/*.csv');     
subj_data = zeros([length(file_inds), 40]);                 % Preallocate subject data to be number of files by 40 time points.
for idx = 1:length(file_inds)             % Loops over each file specified by file_inds          
    [subj_data, patient_data] = read_extract_data(files.name, file_path, idx, file_inds, subj_data, subj);
    
    % Display the max, min, and standard deviation of the patient_data
    disp(['Maximum inflammation: ', num2str(max(patient_data(:)))]);
    disp(['Minimum inflammation: ', num2str(min(patient_data(:)))]);
    disp(['Standard deviation: ', num2str(std(patient_data(:)))]);
    
    % Make the figures visible or not depending on the input plot_switch
    if plot_switch == 1             
        figure('visible', 'off')    
    else                            
        figure('visible', 'on')     
    end                             
    
    % Make a 1 by 3 subplot with subplots in the order specified by the
    % cell array input order.
    inflammation_subplot(patient_data, order{1},1);
    inflammation_subplot(patient_data, order{2},2);
    inflammation_subplot(patient_data, order{2},3);
    
    % Save png images of the subplot if the input plot_switch is equal to 1
    if plot_switch == 1
        figure_name = sprintf('inflammation_data-%02d', idx);
        print(figure_name,'-dpng') 
    end
    
end
