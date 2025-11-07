t = -2:0.01:2;
u_t = (t >= 0);
f_t = exp(-0.5*t) .* u_t;       
figure;
plot(t, f_t);
grid on;


n = -2:1:2;
u_n = (n >= 0);
f_n = exp(-0.5*n) .* u_n;
figure;
stem(n, f_n);          
grid on;


n2 = 0:20;
f2 = 0.25 * (1.2).^n2;          
figure;
stem(n2, f2);
grid on;

