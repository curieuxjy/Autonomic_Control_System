s=tf('s');

G=1/(s^2+s+1);
[numG,denG]=tfdata(G,'vec');
%-----------------Lead design-----------------
wgc=4; % new wgc (approx)
phase_lead_max=30*pi/180; %max phase lead @ wgc

poz=tan((phase_lead_max+pi/2)/2)^2; %lead ratio
pz=wgc^2;
z=1/sqrt(poz/wgc^2);
p=sqrt(poz*wgc^2);

[magG,phG]=bode(G,wgc); %@wgc

klead=1/magG/sqrt(poz);
Klead=klead*(s/z+1)/(s/p+1)
figure(1); bode(Klead);

%-----------------Lag design-----------------
zop=500; %lag ratio
z=wgc/10*1.75; %zero

p=z/zop;
Klag=zop*(s/z+1)/(s/p+1);
figure(2); bode(Klag);
%-----------------Lead - Lag-----------------
K=Klead*Klag;
[numK,denK]=tfdata(K,'vec'); % or simulink

L=G*K;
Gcl=L/(1+L);
Gcl_cancled = minreal(Gcl);
%------------------step-input-------------------
t=0:0.001:20;
r=ones(length(t),1);
[y,t]=lsim(Gcl,r,t);
figure(3);
plot(t,r,'b-.',t,y,'r');

[GM,PM,wpc,wgc]=margin(L)
%-----------------sensitivity-----------------
S=1/(1+L); T=1-S;
w=logspace(-3,2,2000);
[magS,phS,w]=bode(S,w);
[magT,phT,w]=bode(T,w);

figure(4);
semilogx(w,20*log10(squeeze(magS)),w,20*log10(squeeze(magT)));