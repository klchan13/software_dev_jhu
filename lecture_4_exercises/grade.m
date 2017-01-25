% Question 1 of slide 30
% Assigns a letter grade to a grade and puts it into a cell array

% Put the grade in an array
x = [88 77 75 68 95 99 82 92 50];
for idx = 1:length(x)       % Loop over each 
    
    % Isolates one grade
    r = x(idx);
    if r >= 90
        grades{idx} = 'A';
    elseif r >= 80 
        grades{idx} = 'B';
    elseif r >= 70
        grades{idx} = 'C';
    elseif r >= 60
        grades{idx} = 'D';
    elseif r < 60
        grades{idx} = 'F';
    end
end