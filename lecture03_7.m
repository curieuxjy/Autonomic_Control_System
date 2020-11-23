% 2nd transfer function nyquist(44page)
syms s;
omega = logspace(-2, 3, 10000);
y=1/(s^2+s+1);
yw=subs(y, s, i*omega); % +w
ywc=subs(y, s, -i*omega); % -w

plot(real(yw), imag(yw), 'b', real(ywc), imag(ywc), 'r')
axis equal