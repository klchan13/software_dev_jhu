% Question 4.
mat_files = dir('*.mat');

for fidx = 1:length(mat_files)
    fname = mat_files(fidx).name;
    load(fname)
    % part A - 5 points
    
    % Isolate the data from the trials in which the subjects didn't move
    % their eyes.
    data_corr = data(:,~data(3,:));     
    save(fname, 'data_corr', 'data', 'location')
    
    % Part B - 15 points
    % Isolate the peripheral and fixed data and the separate the data based
    % on the contrasts queried in each set.
    p_corr_count = [];
    f_corr_count = [];
    data_corr_p = data_corr(:,strcmp(location(~data(3,:)), 'p'));
    data_corr_f = data_corr(:,strcmp(location(~data(3,:)), 'f'));
    contrasts_p = unique(data_corr_p(1,:));
    contrasts_f = unique(data_corr_f(1,:));
    
    % Have separate loops for peripheral and fixed contrasts since it's
    % possible that they test different contrasts.
    for c = contrasts_p
        p_corr_count = [p_corr_count, sum(data_corr_p(2,data_corr_p(1,:) == c))];
    end
    
    for c = contrasts_f
        f_corr_count = [f_corr_count, sum(data_corr_f(2,data_corr_f(1,:) == c))];
    end
    
    % Part B - 10 points
    % Make a subplot for each subject's data.
    subplot(2,2,fidx);
    title(fname)
    plot(contrasts_p,p_corr_count,'-*')
    hold on
    plot(contrasts_f,f_corr_count,'-*')
    set(gca, 'Xlim', [0 1])
    set(gca, 'Ylim', [0 20])
    legend('Periphery', 'Fixed')
    xlabel('Contrast')
    ylabel('Total Correct')
end
