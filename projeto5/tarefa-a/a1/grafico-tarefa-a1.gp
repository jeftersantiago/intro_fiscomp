set terminal epslatex standalone size 10cm, 10cm
set output "grafico-tarefa-a1.tex"

reset

set title "Simulação da órbita da Terra ao redor do Sol"

set xlabel "$x$ (AU)"
set ylabel "$y$ (AU)"

set xrange[-1.2:1.2]
set yrange[-1.2:1.2]

unset grid


set size square

set style line 1 lc rgb "black"  lw 1 pointsize 0.5 pointtype 7
set linetype 10
set style line 2 lc rgb "yellow" lw 3 pointsize 8.5 pointtype 7
set style line 3 lc rgb "blue" lw 3 pointsize 2.5 pointtype 7

plot "saida-tarefa-a1.dat" with lines ls 1 title "Orbita da Terra ao redor Sol",\
     'saida-tarefa-a1.dat' every 30::1::360 with points ls 3 notitle,\
     "<echo '0 0'"   with points ls 2 notitle, \

