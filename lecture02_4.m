% 30pg example
syms s tau1 tau2
Y = 1/(s*(tau1*s+1)*(tau2*s+1))
y = ilaplace(Y)
pretty(y)
yt = limit(y, tau1, tau2)