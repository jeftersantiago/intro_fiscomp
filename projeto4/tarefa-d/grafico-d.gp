set terminal epslatex standalone size 12cm, 10cm
set output "tarefa-d-grafico.tex"
# reset 

set xlabel "Tempo (s)"
set ylabel "$\\omega(\\theta)$"

set grid 
set style line 1 lc rgb "blue" lw 3
set style line 2 lc rgb "red" lw 3

plot 'saida-tarefa-d.dat' with lines ls 1 title "Gráfico Bebê"