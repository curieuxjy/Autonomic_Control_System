% Nyquist curve(42page)
omega = logspace(-2, 3, 10000);
y=1./(1j*omega+1);
plot(real(y), imag(y))
axis equal