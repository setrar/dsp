// https://www.dsprelated.com/showcode/94.php
//This Program Illustrates the discrete plot in scilab
//using plot2d3 function
clear;
clc;
close;
a =1.5; 
n =1:10;  
x = (a)^n;
a=gca();
a.thickness = 2;
plot2d3('gnn',n,x) 
xtitle('Graphical Representation of Exponentially Increasing Signal','n','x[n]');

