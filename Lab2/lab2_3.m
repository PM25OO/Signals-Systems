clear all;
N = 45;

num = [0.9  -0.45  0.35  0.002];
den = [1  0.71  -0.46  -0.62];

x = [1 zeros(1, N-1)];

y1 = impz(num, den, N);
y2 = filter(num, den, x);

subplot(3,1,1)
stem(y1);
xlabel("时间序号");
ylabel("振幅");
title("冲激响应impz");

subplot(3,1,2)
stem(y2);
xlabel("时间序号");
ylabel("振幅");
title("冲激响应filter");

subplot(3,1,3)
stem(y1 - y2.');
xlabel("时间序号");
ylabel("振幅");
grid on;
