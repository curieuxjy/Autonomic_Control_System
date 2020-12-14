s=tf('s');

G=1/(s^2+s+1);
[numG,denG]=tfdata(G,'vec');

%Lead design
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
