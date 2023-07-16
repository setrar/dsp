// https://x-engineer.org/format-plot-axes-latex-scilab/
t = 0:0.01:4*%pi;
f = sin(t).^2+cos(t);
plot(t,f,'LineWidth',2)
xgrid()
xlabel('t [decimal]','FontSize',2)
ylabel('f(t)','FontSize',2);
title('$f(t)=sin^2(t)+cos(t)$','FontSize',3);
ha=gca();
ha.tight_limits = ["on","on","on"]
ha.data_bounds=[min(t),min(f)-0.1;max(t),max(f)+0.1];
ha.x_ticks=tlist(["ticks","locations","labels"],..
   [0;%pi/2;%pi;3*%pi/2;2*%pi;5*%pi/2;3*%pi;7*%pi/2;4*%pi],..
   ["$\Large{0}$";..
   "$\Large{\frac{\pi}{2}}$";..
   "$\Large{\pi}$";..
   "$\Large{\frac{3\pi}{2}}$";..
   "$\Large{2\pi}$";..
   "$\Large{\frac{5\pi}{2}}$";..
   "$\Large{3\pi}$";..
   "$\Large{\frac{7\pi}{2}}$";..
   "$\Large{4\pi}$"]);
   
xlabel('t [rad]','FontSize',2)
