% cubic feet/min
Q = 2.67;
V = 160.41;
D = 52;
Ti = 90;
% Co = 0.8;
Cp = 0.844;
% Cino = 1;
H = -500;
% To = Ti + ((H*V)/(Q*Cp*D))*(2.4*10^15*exp(-2000/(To+459.67)));
% Co = (0.8*Q/V)/((Q/V)+(2.4*10^15*exp(-2000/(To+459.67))));
xo = [0 0];
fun = @ini;
x = fsolve(fun,xo)
Cino = 0.0192
To = 98.8950
[xs,us,ys] = trim('cstr',[1 ;1],0.8,[1; 1],[],1,[])
[A,B,C,D] = linmod('cstr',xs,0.8)
linmodss = ss(A,B,C,D);
[n,d] = ss2tf(A,B,C,D);
G = tf(n(2,:),d)