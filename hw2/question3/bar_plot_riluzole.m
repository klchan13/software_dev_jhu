% Question 3d
% Makes a bar plot of the average survival rate and standard deviation for
% four groups of subjects.

% Load the data as structures.
c = load('controls.mat');
r = load('riluzole.mat');

% Isolate the survival rates for each group.
surv_f_c = c.survival(strcmp(c.gender, 'f'));
surv_m_c = c.survival(strcmp(c.gender, 'm'));
surv_f_r = r.survival(strcmp(r.gender, 'f'));
surv_m_r = r.survival(strcmp(r.gender, 'm'));

% Find the mean and standard deviation of the survival rates for each group
all_means = [mean(surv_f_c), mean(surv_m_c),mean(surv_f_r), mean(surv_m_r)];
all_stds = [std(surv_f_c), std(surv_m_c),std(surv_f_r), std(surv_m_r)];

% Make a bar plot of the means and the standard deviations as the errorbars
bar(all_means)
hold on
errorbar(all_means, all_stds)
set(gca,'xticklabel',{'fcontrols', 'mcontrols', 'fpatients', 'mpatients'})