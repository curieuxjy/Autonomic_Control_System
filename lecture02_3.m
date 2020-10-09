% 라플라스 역변환
% laplace(), ilaplace() 이용
syms s a w t f(t)
laplace(1, s)
ilaplace(1/s)

laplace(t)
ilaplace(1/s^2)

laplace(t^2)
ilaplace(2/s^3)

laplace(exp(a*t)) 
ilaplace(-1/(a - s))

laplace(exp(a*t)*t^2)
ilaplace(-2/(a - s)^3)

laplace(sin(w*t))
ilaplace(w/(s^2 + w^2))

laplace(cos(w*t))
ilaplace(s/(s^2 + w^2))

% 미분
laplace( diff(f(t), t) )
ilaplace(s*laplace(f(t), t, s) - f(0))

laplace(diff(f(t), t, 2))
ilaplace(s^2*laplace(f(t), t, s) - s*f(0) - subs(diff(f(t), t), t, 0))
% dirac(t)*subs(diff(f(s), s), s, 0) - dirac(t)*subs(diff(f(t), t), t, 0) + diff(f(t), t, t)