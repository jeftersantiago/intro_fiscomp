set terminal epslatex standalone size 12cm, 10cm
set output "grafico-tarefa-a1.tex"

reset

set title "Simulação da órbita da Terra ao redor do Sol"

set xlabel "$y$ (AU)"
set ylabel "$x$ (AU)"

set xrange[-1.2:1.2]
set yrange[-1.2:1.2]

unset grid

set style line 1 lc rgb "blue" lw 3 pointsize 0.5 pointtype 7

plot "saida-tarefa-a1.dat" with linespoints ls 1 title "Orbita da Terra ao redor Sol"
