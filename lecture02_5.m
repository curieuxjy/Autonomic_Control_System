numG = [1]; denG = [0.5 1];
G = tf(numG, denG);

numK = [1 1/0.25]; denK = [1 0];
K = tf(numK, denK);

Gcl = G*K/(1+G*K);

t=0:0.001:10;
for ii=1:length(t),
    if t(ii)<1, r(ii)=0;
    else r(ii)=1;
    end,
end

y = lsim(Gcl, r, t);

plot(t, r, t, y)