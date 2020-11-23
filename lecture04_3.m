% root locus plot(24page)
syms s K
fs=s^4+6*s^3+11*s^2+6*s+K;

poles=solve(fs==0, s);

pole_trj=eval(subs(poles, K, 0:0.1:15));

plot(real(pole_trj(1,:)), imag(pole_trj(1,:)),'go',...
    real(pole_trj(2,:)), imag(pole_trj(2,:)),'mo',...
    real(pole_trj(3,:)), imag(pole_trj(3,:)),'bd',...
    real(pole_trj(4,:)), imag(pole_trj(4,:)),'rd')
axis equal