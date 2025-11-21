f  = [1, -2, 3, -4, 5];
f1 = [2, 1, 0, -1, 2]; 
f2 = [1, 3, 1, 2, 1]; 
f3 = [0, 2, -2, 1, 0];        


%% 单位冲激信号卷积
% delta(n-k) * f(n) = f(n-k)

delta_shifted = [0, 0, 0, 1]; 

LHS_1 = conv(delta_shifted, f);

RHS_1 = [0, 0, 0, f];

Error_1 = LHS_1 - RHS_1;

subplot(3,3,1);
stem(LHS_1);grid;
subplot(3,3,2);
stem(RHS_1);grid;
subplot(3,3,3);
stem(Error_1);
title([' \delta(n-3)*f(n) - f(n-3)']);
ylabel('幅度');
grid on;

%% 卷积交换律
% f1 * f2 = f2 * f1

LHS_2 = conv(f1, f2);
RHS_2 = conv(f2, f1);

Error_2 = LHS_2 - RHS_2;

subplot(3,3,4);
stem(LHS_2);grid;
subplot(3,3,5);
stem(RHS_2);grid;
subplot(3,3,6);
stem(Error_2);
title('(f1 * f2) - (f2 * f1)');
ylabel('幅度');
grid on;

%% 卷积分配律
% f1 * (f2 + f3) = f1 * f2 + f1 * f3

LHS_3 = conv(f1, (f2 + f3));
RHS_3 = conv(f1, f2) + conv(f1, f3);

Error_3 = LHS_3 - RHS_3;

subplot(3,3,7);
stem(LHS_3);grid;
subplot(3,3,8);
stem(RHS_3);grid;
subplot(3,3,9);
stem(Error_3);
title('[f1*(f2+f3)] - [f1*f2 + f1*f3]');
xlabel('时间序号 n');
ylabel('幅度');
grid on;