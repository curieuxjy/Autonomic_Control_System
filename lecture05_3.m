s = tf('s'); %set variable for transfer function

G = 1/(s^2+s+1);
[numG, denG]=tfdata(G, 'vec');

% PID control
Kp = 15;
Kd = 1.5;
Ki = 6;
K = Kp+Kd+Ki/s;

L=G*K;

% sensitivity
% S+T=1
S=1/(1+L); T=1-S;
w=logspace(-3, 2, 2000);
[magS,phS,w]=bode(S,w);
[magT,phT,w]=bode(T,w);

figure(1);
subplot(2,1,1); bode(S,w);
subplot(2,1,2); bode(T,w);
figure(2);
semilogx(w,20*log10(squeeze(magS)),w,20*log10(squeeze(magT)));
