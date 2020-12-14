%B817104 이정연
% 6
syms s
omega=20*pi; zeta=0.1;
num = [omega^2];
den = conv([0.01^2 0.02 1], [1 2*zeta*omega omega^2])
G = tf(num, den);

K=-500;
L = K*G;
[Gm, Pm, w_pc, w_gc] = margin(L);
margin(L)
PM=Pm               % PM [deg]
GM_dB=20*log10(Gm)  % GM [dB]