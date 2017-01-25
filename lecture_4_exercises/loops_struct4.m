% Question 4, slide 19
% Takes all the fields of the structure and reduces them to the values from
% only the first 6 months.
% Load the data from this file path into a structure called
% baltimore_weather
baltimore_weather = load('/Users/kimberly/matlab_data/baltimore_weather/baltimore_weather.mat');

% Get the field names from the above structure as a cell array
balt_fields = fieldnames(baltimore_weather);

for v_idx = 1:length(balt_fields)       % Loop over the total number of fields
    this_field = balt_fields{v_idx};    % Index into the cell array of field names
    this_data = getfield(baltimore_weather, balt_fields{v_idx});        % Get the data from the field
    baltimore_weather = setfield(baltimore_weather,this_field,this_data(1:((length(this_data)/2))));    % Set the field as only the first 6 values
                                                                                                        % of the data in that field.
end
    