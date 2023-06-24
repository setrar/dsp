n=-6:6;
xn=[1 2 0 -1 1 2 -2 0 0 -2  1 2 2];
plot2d3(n,xn,leg="sin(x)");
//plot2d(x-4,sin(x),1,leg="sin(x)") 
a=gca() // Handle on axes entity
a.x_location = "middle"; 
a.y_location = "middle"; 

