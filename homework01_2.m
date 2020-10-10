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
omega1=1; omega2=2; omega3=4; 
zeta=0.5;
numG1 = [omega1^2]; 
denG1 = [1 2*zeta*omega1 omega1^2];
G1 = tf(numG1, denG1);
numG2 = [omega2^2]; 
denG2 = [1 2*zeta*omega2 omega2^2];
G2 = tf(numG2, denG2);
numG3 = [omega3^2]; 
denG3 = [1 2*zeta*omega3 omega3^2];
G3 = tf(numG3, denG3);
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
figure(4);
plot(t, r, t, y1, t, y2, t, y3);
legend('input','1','2','4');
axis([0 10 -0.1 1.2]);
clear;

% 2-F
omega=1; 
zeta1=0.1; zeta2=0.25; zeta3=0.5; zeta4=0.707;
numG = [omega^2]; 
denG1 = [1 2*zeta1*omega omega^2];
denG2 = [1 2*zeta2*omega omega^2];
denG3 = [1 2*zeta3*omega omega^2];
denG4 = [1 2*zeta4*omega omega^2];
G1 = tf(numG, denG1);
G2 = tf(numG, denG2);
G3 = tf(numG, denG3);
G4 = tf(numG, denG4);
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
figure(5);
plot(t, r, t, y1, t, y2, t, y3, t, y4);
%axis([0 10 -0.1 1.2]);
legend('input','0.1','0.25','0.5', '0.707');
clear;