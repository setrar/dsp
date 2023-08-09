
n=200;
x=linspace(0,2*pi,n);

s1=sin(1*x/2); s1=s1/norm(s1);
s2=sin(2.2*x/2); s2=s2/norm(s2);
s3=sin(3*x/2); s3=s3/norm(s3);
s4=sin(4*x/2); s4=s4/norm(s4);

f=exp(-2*(x-pi+1).^2);

a1=f*s1'; f1=a1*s1;
a2=f*s2'; f2=a1*s1+a2*s2;
a3=f*s3'; f3=a1*s1+a2*s2+a3*s3;
a4=f*s4'; f4=a1*s1+a2*s2+a3*s3+a4*s4;

