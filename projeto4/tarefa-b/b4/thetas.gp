set terminal epslatex standalone size 12cm, 10cm
set output "tarefa-b4-grafico-thetas.tex"
# reset 

set style line 1 lc rgb "black" lw 2
set style line 2 lc rgb "red"   lw 2
set style line 3 lc rgb "green" lw 2
set style line 4 lc rgb "blue"  lw 2

plot "theta1.dat" with lines ls 1 title "$\\theta_1$",\
     "theta2.dat" with lines ls 2 title "$\\theta_2$",\
     "theta3.dat" with lines ls 3 title "$\\theta_3$",\
     "theta4.dat" with lines ls 4 title "$\\theta_4$"