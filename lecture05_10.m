A=[0 1; -1 -1]; B=[0; 1]; C=[1 0];
om=obsv(A,C); rank(om) %check 2

p=[-30+20j -30-20j];
L=place(A',C',p)'

eig(A-L*C) %same with p
%--------observer ss model--------
Aov=A-L*C;
Bov=[B L];
Cov=eye(2);
Dov=Cov*Bov*0;
