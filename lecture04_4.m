% using rlocus() (page27)
num=[1];
den=[1 6 11 6 0];
G=tf(num, den);

k=0:0.1:15;
rlocus(G, k)
% rlocus(G)