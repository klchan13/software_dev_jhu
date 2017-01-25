function [sensors] = diagnoser_arr(residues)
% models a sensor fault detector indicating if one of the sensors is faulty
% in N different tests.
% Inputs: residues - 3 by N array of residues, residue12 is in row 1,
% residue23 is in row 2, and residue 13 is in row 3.  Each residue displays
% 0 or 1 in each of the N tests depending on which sensor is faulty.
% (Example: If sensor 2 is faulty, residue12 = 1, Residue23 = 1, and
% Residue13 = 0)
% Outputs: sensors - 3 by N array where sensor1 is in row 1, sensor2 is in
% row 2, and sensor3 is in row 3.  The sensors display either 0 or 1 
% indicating whether or not the sensors are faulty with 0 = not faulty,
% 1 = faulty.

% Preallocate the sensor output array.
sensors = 2*ones([3, size(residues)]);
for idx = 1:size(residues)  % Iterate over each test
    
    % Separate the different residues.
    residue12 = residues(1,idx);
    residue23 = residues(2,idx);
    residue13 = residues(3,idx);
    
    % Check each residue in each test and set the output sensors.
    if (residue12 == 1 && residue23 == 0 && residue13 == 1)
        sensors(1,idx) = 1;
        sensors(2:3,idx) = 0;
    elseif (residue12 == 1 && residue23 = 1 && residue13 == 0)
        sensors(2,idx) = 1;
        sensors([1 3],idx) = 0;
    elseif (residue12 == 0 && residue23 == 1 && residue13 == 1)
        sensors(3,idx) = 1;
        sensors(2:3,idx) = 0;
    end
end
