% partfrac() 이용해보기
syms s f(s)
f(s) = (s^2+15)/(s+3)^2/(s^2+3)
partfrac(f)
pretty(ans)