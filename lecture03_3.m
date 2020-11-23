%conv 사용하기
%         1           1
%  G =  -----    U =  -
%       s + 1         s
numG = [1];
denG = [1 1];
G = tf(numG, denG);
G

numR = [1];
denR = [1 0];
U = tf(numR, denR);
U

G*U

num = conv([1], [1]);
den = conv([1, 1], [1, 0]);
GU = tf(num, den);
GU