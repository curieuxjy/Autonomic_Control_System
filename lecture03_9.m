% Bode plot(54page)
num=100*[1 2];
den=[1 40 400 0];
G=tf(num, den);

w=logspace(-1, 3, 100);
[mag, ph]=bode(G,w); % Bode

mag=squeeze(mag); ph=squeeze(ph);

subplot(211);
semilogx(w, 20*log10(mag)); ylabel('mag [dB]');
subplot(212);
semilogx(w, ph); ylabel('phase [deg]'); xlabel('Freq. [rad/s]');
