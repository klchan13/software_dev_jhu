function [] = inflammation_subplot(patient_data, value, sp_idx)

% Inflammation subplot function that takes in patient data, a value
% indicating which of the following to make a subplot for: average, max
% or min and on which subplot (sp_idx)

switch value
    case 'average'
        ave_inflammation = mean(patient_data, 1);
        subplot(1, 3, sp_idx);
        plot(ave_inflammation); 
        ylabel('average')
    case 'max'
        subplot(1, 3, sp_idx);
        max_inflammation = max(patient_data, [], 1);
        plot(max_inflammation);
        ylabel('max')
    case 'min'
        subplot(1, 3, sp_idx);
        min_inflammation = min(patient_data, [], 1);
        plot(min_inflammation);     % Change to max_inflammation
        ylabel('min')
end