n=200;
x=linspace(0,2*pi,n);

f=exp(-2*(x-pi+1).^2);

approx=0*x;
for j=1:9
    s=sin(j*x/2); s=s/norm(s);
    a=f*s';
    approx=approx+a*s;
    plot(x,f,'b',x,approx,'g','Linewidth',2)
    title(num2str(j))
    pause(1)
 end