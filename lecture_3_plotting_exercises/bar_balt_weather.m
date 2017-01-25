figure()
% Load data
load('/Users/kimberly/matlab_data/baltimore_weather/baltimore_weather.mat')
month_labels = {'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'};

% First subplot for average low temperature
subplot(2,1,1)
bar(avg_low_f)
set(gca,'xticklabel',month_labels)
title('Average Low Temperature (F)')
set(gca, 'Ylim', [0 max(avg_high_f)])

% First subplot for average high temperature
subplot(2,1,2)
bar(avg_high_f)
set(gca,'xticklabel',month_labels)
title('Average High Temperature (F)')
set(gca, 'Ylim', [0 max(avg_high_f)])