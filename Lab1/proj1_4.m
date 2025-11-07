n = -50:50;
f = zeros(size(n));
f(n == 10) = 1; 
stem(n, f);
grid on;