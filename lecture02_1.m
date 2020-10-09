syms s f(s)
% 라플라스 변환 계수 구하기
f(s) = (s^2+15)/(s+3)^2/(s^2+3)
c2 = subs(f(s)*(s+3)^2, s, -3)
c1 = subs(diff(f(s)*(s+3)^2), s, -3)
c3 = imag(subs(f(s)*(s^2+3), s, sqrt(3)*i))/sqrt(3)
c4 = real(subs(f(s)*(s^2+3), s, sqrt(3)*i))
