t=0:0.01:2*pi; % 0 −2π 时间间隔为0.01
y=zeros(10,max(size(t))); %10*629（t的长度）的矩阵
x=zeros(10,max(size(t)));
for k=1:2:9 %奇次谐波1,3,5,7,9
    x1=(3/k) * sin(k*t); %各次谐波正弦分量
    x((k+1)/2, :) = x((k+1)/2, :) + x1;  % 累加到 x 对应行
    y((k+1)/2, :) = x((k+1)/2, :);  % 将每次谐波保存到 y 中
end
subplot(3,1,1);
plot(t,y(1:5,:)); %绘制y矩阵中1-5行随时间波形
grid;
halft=ceil(length(t)/2); %行向量长度减半（由于对称前后段一致）

subplot(3,1,2); %绘制三维图形：矩阵y中全部行向量的一半
mesh(t(1:halft),1:10,y(:,1:halft));

subplot(3, 1, 3);
plot(t, sum(y));
grid on;