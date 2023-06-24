
// parabola
a=[488ˆ2 488 1;408ˆ2 408 1;568ˆ2 568 1];
b=[1.28;0;0];
x=a\b;
t=408:568;
p=x’*[t.*t;t;ones(t)];
// unit step function
u=[0*ones(408:487) ones(488:568)];
// finite duration sinusoid
s=p.*sin(2*%pi/16*t+u*%pi);
// signal to be analyzed
s=[0*ones(0:407) s 0*ones(569:951)];
// 64-point rectangular window
h=ones(1,64);
// wigner spectrum
w=wigner(s,h,12,128);
plot3d(1:69,1:64,abs(w(1:69,1:64)));
end();
