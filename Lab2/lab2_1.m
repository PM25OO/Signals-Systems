clear all;
n=0:40;
a=2;b=-3;
x1=cos(2*pi*0.1*n);
x2=sin(2*pi*0.4*n);
x=a*x1+b*x2;
num = [1 0 3.2];
den = 1;
y1=filter(num,den,x1);
y2=filter(num,den,x2);
y=filter(num,den,x);
yt=a*y1+b*y2;
d=y-yt;%计算差值输出 d[n]
subplot(3,1,1)
stem(n,y);
ylabel("振幅");
subplot(3,1,2)
stem(n,yt);
ylabel("振幅");
subplot(3,1,3)
stem(n,d);
ylabel("振幅");
title("差信号");