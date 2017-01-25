patient_data = csvread('/Users/kimberly/matlab_data/inflammation/inflammation-01.csv');
figure(1)
imagesc(patient_data)

figure(2)
ave_inflammation = mean(patient_data, 1);
plot(ave_inflammation);

figure(3)
subplot(1, 2, 1);
plot(max(patient_data, [], 1));
ylabel('max')

subplot(1, 2, 2);
plot(min(patient_data, [], 1));
ylabel('min')