set terminal epslatex standalone size 12cm, 10cm
set output "tarefa-b4-grafico-thetas.tex"
# reset 


set xlabel "Tempo (s)"
set ylabel "$\\theta$ (rad)"

set style line 1 lc rgb "black" lw 2
set style line 2 lc rgb "red"   lw 2
set style line 3 lc rgb "green" lw 2
set style line 4 lc rgb "blue"  lw 2

set yrange[-2:9]

set grid 


plot "theta1.dat" with points ls 1 title "$\\theta_1 = 7\\pi/18$",\
     "theta2.dat" with points ls 2 title "$\\theta_2 = 7\\pi/18 - 0.01$",\
     "theta3.dat" with points ls 3 title "$\\theta_3 = 7\\pi/18 - 0.02$",\
     "theta4.dat" with points ls 4 title "$\\theta_4 =  7\\pi/18 - 0.04$"