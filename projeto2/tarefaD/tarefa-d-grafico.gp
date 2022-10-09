set terminal epslatex standalone size 15cm, 10cm
set output "tarefa-d-grafico.tex"

set pointsize 2
set style line 1 lc rgb "orange" lw 2

set ylabel "Entropia" 
set xlabel "Número de passos"

plot "saida-tarefa-d.dat" w l ls 1 notitle
