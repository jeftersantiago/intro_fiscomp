set terminal epslatex standalone size 20cm, 20cm
set output "tarefa-c-grafico-trajetoria.tex"

set xlabel "$X$
set ylabel "$Y$"

set style line 1 lc rgb "blue" lw 3
set style line 2 lc rgb "red" lw 3
set style line 3 lc rgb "green" lw 3
set style line 4 lc rgb "magenta" lw 3
set style line 5 lc rgb "black" lw 3
set style line 6 lc rgb "purple" lw 3
set style line 7 lc rgb "yellow" lw 3
set style line 8 lc rgb "gray" lw 3

plot "saida-tarefa-c-traj1.dat" w l ls 1 notitle, \
     "saida-tarefa-c-traj2.dat" w l ls 2 notitle, \
     "saida-tarefa-c-traj3.dat" w l ls 3 notitle, \
     "saida-tarefa-c-traj4.dat" w l ls 4 notitle, \
     "saida-tarefa-c-traj5.dat" w l ls 5 notitle, \
     "saida-tarefa-c-traj6.dat" w l ls 6 notitle, \
     "saida-tarefa-c-traj7.dat" w l ls 7 notitle, \
     "saida-tarefa-c-traj8.dat" w l ls 8 notitle, \
