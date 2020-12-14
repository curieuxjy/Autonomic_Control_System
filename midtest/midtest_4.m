% B817104 이정연
% 4
num=[1];
%den=conv([1 0],conv([1 1],[1 2]));
den = [1 3 2 0];
L=tf(num, den);

K = 0:0.01:100;
rlocus(L, K);
