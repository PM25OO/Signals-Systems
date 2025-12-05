t=-4.5:0.001:5.5;
t02 = -6:0.001:6;
t1 = -5.999:0.001:6;
t2 = -4.499:0.001:5.5;
T = 2;

x1=[zeros(1,1000),ones(1,2000),zeros(1,1000)];
x1=[x1,x1,x1];
x2=[ones(1,1000),zeros(1,1000)];
x2=[x2,x2,x2,x2,x2];

N=100;
c0=0.5;
f1=c0*ones(1,length(t));
for n=1:N
f1=f1+cos(pi*n*t)*sinc(n/2);
end

f2=c0*ones(1,length(t02));
for n=1:N
f2=f2+cos(pi*n*t02)*sinc(n/2);
end


subplot(2,2,1);
plot(t1, x1, 'linewidth', 1.5); 
axis([-4.5,5.5,-4.5,5.5]);
grid;
subplot(2,2,2);
plot(t2, x2, 'linewidth', 1.5);
axis([-4.5,5.5,-4.5,5.5]);
grid;

subplot(2,2,4);
plot(t,f1,'r','linewidth',1.5);
axis([-4.5,5.5,-4.5,5.5]);
grid;

subplot(2,2,3);
plot(t02 * 2,f2,'r','linewidth',1.5);
axis([-4.5,5.5,-4.5,5.5]);
grid;

