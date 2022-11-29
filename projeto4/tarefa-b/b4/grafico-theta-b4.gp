set terminal epslatex standalone size 12cm, 10cm
set output "tarefa-b4-grafico-theta.tex"

set xlabel "Tempo (s)"
set ylabel "$\\theta$ (radianos)"


set grid


# set size sq

set style line 1 lc rgb "red" lw 3
set style line 2 lc rgb "blue" lw 3
set style line 3 lc rgb "black" lw 3

# set multiplot layout 1, 3

plot 'saida-tarefa-b4-theta.dat' using 1:2 with lines ls 1 title "$F_0 = 0$",\
     'saida-tarefa-b4-theta.dat' using 1:3 with lines ls 2 title "$F_0 = 0.5$",\
     'saida-tarefa-b4-theta.dat' using 1:4 with lines ls 3 title "$F_0 = 1.2$"
     
