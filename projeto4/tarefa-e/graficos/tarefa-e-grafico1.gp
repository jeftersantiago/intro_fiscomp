set terminal epslatex standalone size 15cm, 15cm
set output "tarefa-e-grafico.tex"

# reset 

set style line 1 lc rgb "#42f548" lw 2 pointtype 7 pointsize 0.3



set xlabel "$\\theta$ (rad)"
set ylabel "$\\omega$ (rad/s)"

set xrange[-0.5-pi:0.5+pi]
set xtics ("$-\\pi$" -pi, "0" 0, "$\\pi$" pi)


plot 'saida-omega-theta1.dat' with points  ls 1 title  "$\\omega(\\theta), F_0 = 1.2$$
