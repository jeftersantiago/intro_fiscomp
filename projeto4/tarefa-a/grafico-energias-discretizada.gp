set terminal epslatex standalone size 15cm, 10cm
set output "tarefa-a-grafico-energias-discretizadas.tex"
# reset

set xlabel "Tempo (s)"
set ylabel "Energia"

set style line 1 lc rgb "red" lw 3 
set style line 2 lc rgb "blue" lw 3 

# set logscale xy

plot 'saida-energias-discretizado.dat' using 0:1 with lines ls 1 t "Método de Euler",\
     'saida-energias-discretizado.dat' using 0:2 with lines ls 2 t "Método de Euler-Cromer"
