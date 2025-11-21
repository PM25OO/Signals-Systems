N = 20;

num = [0.9  -0.45  0.35  0.002];
den = [1  0.71  -0.46  -0.62];

x = [1 zeros(1, N-1)];
h = filter(num, den, x);

subplot(4, 1 ,1);
stem(h);
xlabel("时间序号");
ylabel("振幅");
title("单位冲激响应 h[n]");

x=[1 -2 3 -4 3 2 1];    %输入序列
y=conv(h,x);            %h 由(1)中 filter 命令求出
n=0:25;
subplot(4,1,2);
stem(n,y);
xlabel("时间序号 n");ylabel("振幅");
title("用卷积得到的输出y[n]");grid;

x1=[x zeros(1,19)];
y1=filter(h,1,x1);
subplot(4,1,3);
stem(n,y1);
xlabel("时间序号 n");ylabel("振幅");
title("用滤波得到的输出y1[n]");grid;

subplot(4,1,4)
stem(y - y1);
xlabel("时间序号");
ylabel("振幅");
title("y[n] - y1[n]");grid;

% Q: 为什么要对 x[n]进行补零得到的 x1[n]来作为输入来产生 y1[n]？
% A: filter函数产生的输出向量长度严格等于输入向量 x 的长度，通过补零就能
%    得到与 conv 函数完全一致的全长结果