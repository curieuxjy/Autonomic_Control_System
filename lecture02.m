syms s f(s)
f(s) = (s^2+15)/(s+3)^2/(s^2+3)
c2 = subs(f(s)*(s+3)^2, s, -3)