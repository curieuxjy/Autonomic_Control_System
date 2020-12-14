A=[0 1; -1 -1];B=[0; 1];C=eye(2);D=zeros(2,1);
G=ss(A,B,C,D)

cm=ctrb(A,B); rank(cm) % check 2

p=[-7+5j, -7-5j];

K=place(A,B,p);

clp_evalues=eig(A-B*K) %check with p

Nx=[1; 0]; %차원 맞추기

Acl=A-B*K;
Bcl=B*K*Nx;
Ccl=C;
Dcl=D*K*Nx;

Gcl=ss(Acl,Bcl,Ccl,Dcl); %closed model의 state space model

% step input(reference)
t=0:0.001:10;
r=ones(length(t),1);
[y,t,x]=lsim(Gcl,r,t);

u=K*(Nx-x'); %복구

subplot(2,1,1)
plot(t,r,'b-.',t,x(:,1),'r-',t,x(:,2),'g')
subplot(2,1,2)
plot(t,u,'r-')