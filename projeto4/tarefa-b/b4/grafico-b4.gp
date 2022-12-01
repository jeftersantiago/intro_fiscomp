set terminal epslatex standalone size 20cm, 10cm
set output "tarefa-b4-grafico.tex"
# reset 

set key box center bottom maxrows 

set xlabel "Tempo (s)"
set ylabel "$\\omega$ (rad/s)"

set grid


set style line 1 lc rgb "red" lw 4
set style line 2 lc rgb "blue" lw 4
set style line 3 lc rgb "black" lw 4

set multiplot layout 1, 2

plot 'saida-tarefa-b4-omega.dat' using 1:2 with lines ls 1 title "$F_0 = 0$",\
     'saida-tarefa-b4-omega.dat' using 1:3 with lines ls 2 title "$F_0 = 0.5$",\
     'saida-tarefa-b4-omega.dat' using 1:4 with lines ls 3 title "$F_0 = 1.2$"
 

set key box right top # maxrows 1 

     
set yrange[-1:8]
set ylabel "$\\theta$ (rad)"

plot 'saida-tarefa-b4-theta.dat' using 1:2 with p ls 1 pointtype 2 ps 0.5 title "$F_0 = 0$",\
     'saida-tarefa-b4-theta.dat' using 1:3 with p ls 2 pointtype 4 ps 0.5 title "$F_0 = 0.5$",\
     'saida-tarefa-b4-theta.dat' using 1:4 with p ls 3 pointtype 6 ps 0.5 title "$F_0 = 1.2$"
 