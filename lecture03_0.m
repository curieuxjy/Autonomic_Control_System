% state-space model
A = [0 1; 0 0];
B = [0 ; 1];
C = [1 0];
D = C*B*0;

G = ss(A, B, C, D);
G