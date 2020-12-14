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

t = 0:0.001:20;
r=ones(length(t),1);
[y,t]=lsim(Gcl,r,t); %step()

plot(t,r,'b-',t,y,'r');

%step(Gcl)

