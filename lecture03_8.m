% nyquist (45apge)
s=tf('s');
G=150/(s-2)/(s+6)/(s+8);
nyquist(G)