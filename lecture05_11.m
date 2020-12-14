A=[0 1;-1 -1]; B=[0; 1]; C=[1 0]; D=C*B*0;

cm=ctrb(A,B); rank(cm) %check 2
om=obsv(A,C); rank(om) %check 2

% feedback model
p=[-7+5j, -7-5j];
K=place(A,B,p);
clp_evalues=eig(A-B*K) %check with p

% observer model
p=[-30+20j -30-20j];
L=place(A',C',p)'
eig(A-L*C) %check with p

Nx=[1; 0]; %dimension correction
% feedback sys
Acl=A-B*K;
Bcl=B*K*Nx;
Ccl=C;
Dcl=D*K*Nx;
Gcl=ss(Acl,Bcl,Ccl,Dcl);

% observer sys
Aov=A-L*C;
Bov=[B L];
Cov=eye(2);
Dov=Cov*Bov*0;
Gov=ss(Aov,Bov,Cov,Dov);

% step input(reference)
t=0:0.001:10;
r=ones(length(t),1);

% simulation with feedback sys
[y,t,x]=lsim(Gcl,r,t); 

u=K*(Nx-x'); %복구
% simulation with observer sys
[x_hat,t,xx]=lsim(Gov,[u;y'],t); 

figure(1);
subplot(2,1,1)
plot(t,r,'b-.',t,x(:,1),'r-',t,x(:,2),'g')
subplot(2,1,2)
plot(t,u,'r-')

figure(2);
subplot(2,1,1)
plot(t,r,'b-.',t,xx(:,1),'r-',t,xx(:,2),'g')
subplot(2,1,2)
plot(t,x_hat,'b-')