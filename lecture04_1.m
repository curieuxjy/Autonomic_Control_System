% state space model(5page)
zeta=0.25;
omega=10;
A=[0 1; -omega^2 -2*zeta*omega];
B=[0; 0];
C=[1 0];
D=0;

sys=ss(A, B, C, D);
x0=[1; 0];
[y, t, x]=initial(sys, x0, 3);
plot(t, y)