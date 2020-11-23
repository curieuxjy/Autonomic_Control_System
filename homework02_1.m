% hw2 a)
num=[1];
den=[0.5 1 0];
G=tf(num, den);
rlocus(G)

% hw2 b)
num=[1];
den=[1 3 2 0];
G=tf(num, den);
rlocus(G)

% hw2 c)
num=[1 3];
den=[1 3 2];
G=tf(num, den);
rlocus(G)

% hw2 d)
%num=[1 3^(1/2)];
%den=[1 3 4 2];
%G=tf(num, den);
%rlocus(G)