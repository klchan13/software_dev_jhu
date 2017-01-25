function [Sensor1, Sensor2, Sensor3] = diagnoser(Residue12,Residue23,Residue13)
% Question 1, slide 38
% Models a sensor fault detector indicating if one of the
% sensors is faulty.
% inputs: Residue12,Residue23,Residue13 = the three sensors or the
% diagnoser which display either a 0s or 1s depending on which sensor is
% faulty.  (Example: If sensor 2 is faulty, Residue12 = 1, Residue23 = 1,
% and Residue13 = 0)
% outputs: Sensor1, Sensor2, Sensor3 - displays either 0 or 1 next to each
% sensor indicating whether or not the sensors are faulty with 0 = not
% faulty, 1 = faulty.

if (Residue12 == 1 && Residue23 == 0 && Residue13 == 1)     % If 12 and 13 are 1s, assign a 1 to sensor 1
    Sensor1 = 1;
    Sensor2 = 0;
    Sensor3 = 0;
elseif (Residue12 == 1 && Residue23 == 1 && Residue13 == 0)
    Sensor1 = 0;
    Sensor2 = 1;
    Sensor3 = 0;
elseif (Residue12 == 0 && Residue23 == 1 && Residue13 == 1)
    Sensor1 = 0;
    Sensor2 = 0;
    Sensor3 = 1;
else
    error('Only one sensor can be faulty')
end
