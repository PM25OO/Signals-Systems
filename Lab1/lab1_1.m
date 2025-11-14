A = 2;
w0 = 2 * pi;
phi = pi / 2;
n = 0:50;
f = 0.08;
arg = w0 * f * n + phi;
y = A * cos(arg);
stem(n, y);
axis([0 50 -2 2]);
grid;
title('正弦序列');
xlabel('时间序号 n');
ylabel('振幅');

% 1) f = 0.1
% 2) 
% 3) axis 命令：设置坐标轴范围
%    grid 命令：显示或隐藏网格线