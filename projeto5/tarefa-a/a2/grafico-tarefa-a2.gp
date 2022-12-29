set terminal epslatex standalone size 10cm, 10cm
set output "grafico-tarefa-a2.tex"
reset

set xlabel "$X$ (UA)"
set ylabel "$Y$ (UA)"

set key textcolor rgb "white"

# set title "Simulação de órbitas circulares de planetas ao redor do Sol"

unset grid
set size square

# Sun
set style line 1 lc rgb "yellow" lw 3 pointsize 6.5 pointtype 7
# earth
set style line 2 lc rgb "blue" lw 4 pointsize 2.5 pointtype 7 dt 2
# mercury
set style line 3 lc rgb "grey" lw 3 pointsize 2.5 pointtype 7 dt 2
# venus
set style line 4 lc rgb "orange" lw 3 pointsize 2.5 pointtype 7 dt 2
# mars
set style line 5 lc rgb "red" lw 3 pointsize 2.5 pointtype 7 dt 2
# jupiter
set style line 6 lc rgb "purple" lw 3 pointsize 2.5 pointtype 7 dt 2
# saturn
set style line 7 lc rgb "brown" lw 3 pointsize 2.5 pointtype 7 dt 2
# uranus
set style line 8 lc rgb "green" lw 3 pointsize 2.5 pointtype 7 dt 2
# netune
set style line 9 lc rgb "blue" lw 3 pointsize 2.5 pointtype 7 dt 2
# pluto
set style line 10 lc rgb "brown" lw 3 pointsize 2.5 pointtype 7 dt 2

# set multiplot layout 2, 1

set xrange[-0.5:0.5]
set yrange[-0.5:0.5]
plot "saida-tarefa-a2-mercurio.dat" with lines ls 3 title "Mercúrio"  ,\
     "<echo '0 0'"   with points ls 1 notitle

# set xrange[-42:42]
# set yrange[-42:42]
# plot "saida-tarefa-a2-plutao.dat" with lines ls 7 title "Plutao" ,\
#      "<echo '0 0'"   with points ls 1 notitle

# unset multiplot 