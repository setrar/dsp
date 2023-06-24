// program f o r a d d i t i o n of two d i s c r e t e s i g n a l s
N =5;
n =0:0.1: N -1;
x1 =sin (1* %pi * n) ;
x2 =sin (2* %pi * n) ;
x3 = x1 + x2 ;
figure (1) ;
subplot (1 ,3 ,1) ;
plot2d3 (n , x1 ) ;
title("sine wave1");
xlabel("n");
ylabel ("x1 ( n )");
subplot (1 ,3 ,2)
plot2d3 (n , x2 ) ;
title ("sine wave2")
xlabel ("n");
ylabel ("x2 ( n )");
