s=tf('s');

G=1/(s^2+s+1);
[numG,denG]=tfdata(G,'vec');

%Lag design
zop=500; %lag ratio
z=wgc/10*1.75; %zero

p=z/zop;
Klag=zop*(s/z+1)/(s/p+1);
figure(2); bode(Klag);
