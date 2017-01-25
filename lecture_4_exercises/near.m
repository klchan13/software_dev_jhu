% Question 2, slide 30
% Tests if x is within 10% of y

x = 2;
y = 4;

if abs(x - y)/y <= 0.1
    disp(1)
else
    disp(0)
end