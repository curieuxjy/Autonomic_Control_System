% hw2 pb2
% margin/phase crossover/gain crossover
num=1;
den=conv([1 0],conv([1 1],[1 2]));
L=tf(num, den);

[Gm, Pm, w_pc, w_gc] = margin(L);

PM=Pm               % PM [deg]
GM_dB=20*log10(Gm)  % GM [dB]
w_pc_hz=w_pc/(2*pi) % phase crossover freq. [Hz]
w_gc_hz=w_gc/(2*pi) % gain crossover freq. [Hz]

margin(L)
