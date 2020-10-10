% 2-B
% numG = [omega^2]; 
% denG = [1 2*zeta*omega omega^2];
% G = tf(numG,denG)

% 2-C
t=0:0.01:10;
omega=1; zeta=0.5;
tmp1 = (1/sqrt(1-zeta^2))*exp(-zeta*omega*t);
tmp2 = sqrt(1-zeta^2)*cos(sqrt(1-zeta^2)*omega*t) + zeta*sin(sqrt(1-zeta^2));
yt = 1-tmp1.*tmp2;
figure(1);
plot(t, yt);
clear;

% 2-D
omega=1; zeta=0.5;
A = [[0 1]
    [-omega^2 -2*zeta*omega]];
B = [[0]
    [omega^2]];
C = [1 0];
D = 0;
sys = ss(A, B, C, D);
t=0:0.01:10;
% step input
for ii=1:length(t),
    if t(ii)<1, r(ii)=0;
    else r(ii)=1;
    end,
end
% linear simulation
y = lsim(sys, r, t);
figure(2);
plot(t, r, t, y);
axis([0 10 -0.1 1.2]);
clear;

% 2-E
omega=1; zeta=0.5;
numG = [omega^2]; 
denG = [1 2*zeta*omega omega^2];
G = tf(numG, denG)
t=0:0.01:10;
% step input
for ii=1:length(t),
    if t(ii)<1, r(ii)=0;
    else r(ii)=1;
    end,
end
% linear simulation
y = lsim(G, r, t);
figure(3);
plot(t, r, t, y);
axis([0 10 -0.1 1.2]);
clear;

% 2-F
% simulink
% homework01_2F.slx file

% 2-G
omega=1; zeta=0.5;
numG = [omega^2]; 
denG = [1 2*zeta*omega omega^2];
G = tf(numG, denG)
t=0:0.01:10;
% step input
for ii=1:length(t),
    if t(ii)<1, r(ii)=0;
    else r(ii)=1;
    end,
end
% linear simulation
y = lsim(G, r, t);
figure(3);
plot(t, r, t, y);
axis([0 10 -0.1 1.2]);
clear;
