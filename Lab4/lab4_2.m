t=-4.5:0.001:5.5;
t1=-4.499:0.001:5.5;
x=[ones(1,1000),zeros(1,1000)];
x=[x,x,x,x,x];

subplot(1,2,1);
plot(t1,x,'linewidth',1.5);
axis([-4.5,5.5,-0.5,1.5]);

N=10000;
c0=0.5;
f1=c0*ones(1,length(t));
for n=1:N
f1=f1+cos(pi*n*t)*sinc(n/2);
end
subplot(1,2,2);
plot(t,f1,'r','linewidth',1.5);
axis([-4.5,5.5,-0.5,1.5]);

% N越大，越接近目标方波