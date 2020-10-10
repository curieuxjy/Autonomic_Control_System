% 1-A
syms s tau f(s)
f(s) = 1/(s+1)/s/tau;
partfrac(f);
pretty(ans);
clear;

% 1-B
t=0:0.01:10;
y = 2*(1-exp(-t));
plot(t, y);
axis([0 5 -0.1 2.2]);
clear;

% 1-C
numG = [1]; denG = [0.5 1];
G = tf(numG, denG);
t=0:0.01:10;
% step input
for ii=1:length(t),
    if t(ii)<1, r(ii)=0;
    else r(ii)=1;
    end,
end
% linear simulation
y = lsim(G, r, t);
plot(t, r, t, y);
axis([0 5 -0.1 1.2]);
clear;

% 1-D
% simulink;
% homework01_1D.slx file

% 1-E
numG1 = [1]; denG1 = [0.1 1];
G1 = tf(numG1, denG1);
numG2 = [1]; denG2 = [0.25 1];
G2 = tf(numG2, denG2);
numG3 = [1]; denG3 = [0.5 1];
G3 = tf(numG3, denG3);
numG4 = [1]; denG4 = [1 1];
G4 = tf(numG4, denG4);
numG5 = [1]; denG5 = [2 1];
G5 = tf(numG5, denG5);
t=0:0.01:10;
% step input
for ii=1:length(t),
    if t(ii)<1, r(ii)=0;
    else r(ii)=1;
    end,
end
% linear simulation
y1 = lsim(G1, r, t);
y2 = lsim(G2, r, t);
y3 = lsim(G3, r, t);
y4 = lsim(G4, r, t);
y5 = lsim(G5, r, t);
plot(t, r, t, y1, t, y2, t, y3, t, y4, t, y5);
axis([0 10 -0.1 1.2]);
legend('0.1','0.25','0.5','1', '2');
clear;
