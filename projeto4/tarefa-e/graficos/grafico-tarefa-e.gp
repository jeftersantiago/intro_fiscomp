set terminal epslatex standalone size 30cm, 15cm
set output "tarefa-e-grafico.tex"

# reset 

set style line 1 lc rgb "blue" lw 3
set style line 2 lc rgb "red" lw 3
set style line 3 lc rgb "orange" lw 3

set multiplot layout 2, 3 

set ylabel "$\\omega$ (rad/s)"
plot 'saida-poincare1-f1.dat' with points ls 1 title "$F_0 = 1/2$"
unset ylabel
plot 'saida-poincare2-f1.dat' with points ls 2 title "$F_0 = 1/2$"
plot 'saida-poincare3-f1.dat' with points ls 3 title "$F_0 = 1/2$"

set ylabel "$\\omega$ (rad/s)"
set xlabel "$\\theta$ (rad)"
plot 'saida-poincare1-f2.dat' with points ls 1 title "$F_0 = 6/5$"
unset ylabel
plot 'saida-poincare2-f2.dat' with points ls 2 title "$F_0 = 6/5$"
plot 'saida-poincare3-f2.dat' with points ls 3 title  "$F_0 = 6/5$"
unset multiplot 

