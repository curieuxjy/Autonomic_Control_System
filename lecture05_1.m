s = tf('s'); %set variable for transfer function

G = 1/(s^2+s+1);
[numG, denG]=tfdata(G, 'vec');

% PID control
Kp = 15;
Kd = 1.5;
Ki = 6;
K = Kp+Kd+Ki/s;

L=G*K;
Gcl=L/(1+L); %closed loop
Gcl_cancled = minreal(Gcl);

%              16.5 s^4 + 22.5 s^3 + 22.5 s^2 + 6 s
% Gcl = --------------------------------------------------
%       s^6 + 2 s^5 + 19.5 s^4 + 24.5 s^3 + 23.5 s^2 + 6 s
%
%                     16.5 s + 6
% Gcl_cancled = ----------------------
%               s^3 + s^2 + 17.5 s + 6

[GM,PM,wpc,wgc]=margin(L);
margin(L) %show Bode


