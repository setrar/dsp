n=-6:6;
xn=[1 2 0 -1 1 2 -2 0 0 -2  1 2 2];
plot2d3(n,xn,leg="sin(x)");

ha=gca() // Handle on axes entity
ha.x_location = "middle"; 
ha.y_location = "middle"; 


m = ha.children.children // mark
m.mark_style = 0;
m.mark_size = 1;

hf=gcf() // Get Current Figure
hf.figure_size = [640 640];
hf.figure_name = 'Plot of sin(x) function';
