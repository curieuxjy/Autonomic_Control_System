% G(s) = 1/(0.5s+1)
% impluse input @ 1[sec]
numG = [1]; denG = [0.5 1]; G = tf(numG,denG);

t = 0:0.001:10;
r = zeros(length(t), 1); r(min(find(t>=1)))=1;
y = lsim(G, r, t);
plot(t, y)