% using nyquist(43page)
s=tf('s');
G=1/(s+1);
omega = logspace(-2, 3, 10000);

[RE, IM]=nyquist(G, omega);
plot(squeeze(RE), squeeze(IM))

nyquist(G, omega)
axis equal