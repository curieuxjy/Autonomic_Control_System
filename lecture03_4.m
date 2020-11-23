% frequency response(35page)
syms s;
tau=5;omega=pi;
G=1/(tau*s+1);
Gjw=subs(1/(tau*s+1), s, j*omega);
Gjw

real(Gjw)

imag(Gjw)

% magnitude
Gjw_mag=eval(abs(Gjw));
Gjw_mag

angle(Gjw)

% phase angle[deg]
phi=eval(angle(Gjw))*180/pi;
phi
