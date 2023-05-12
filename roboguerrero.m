syms t0 tf
Am=[1 t0 t0^2 t0^3 t0^4 t0^5;
    1 tf tf^2 tf^3 tf^4 tf^5;
    0 1 2*t0 3*t0^2 4*t0^3 5*t0^4;
    0 1 2*tf 3*tf^2 4*tf^3 5*tf^4;
    0 0 2 6*t0 12*t0^2 20*t0^3;
    0 0 2 6*tf 12*tf^2 20*tf^3];
t0=0;
tf=10;
D=inv(Am);
au=D*[10;20;0;0;0;0];
As=subs(au);
A=subs(Am);
t=[0:0.1:10];
a0=10;
a1=0;
a2=0;
a3=1/10;
a4=-3/200;
a5=3/5000;
Y=a0+ a1*t+ a2*t.^2+a3*t.^3+a4*t.^4+a5*t.^5;
DY=a1+2*a2*t+3*a3*t.^2+4*a4*t.^3+5*a5*t.^4;
DDY=2*a2+6*a3*t+12*a4*t.^2+20*a5*t.^3;
plot(t,Y,'r')
legend
grid
hold on
plot(t,DY,'k')
hold on 
plot(t,DDY)
legend({'Y','DY','DDY'},'Location','northwest')


%plot