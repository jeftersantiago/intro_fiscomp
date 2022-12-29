set terminal epslatex standalone size 30cm, 10cm
set output "grafico-tarefa-a1.tex"
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

set multiplot layout 1, 3

set xrange[-1.6:1.6]
set yrange[-1.6:1.6]
plot "saida-tarefa-a1-terra.dat" with lines ls 2 title "Terra", \
     "saida-tarefa-a1-mercurio.dat" with lines ls 3 title "Mercúrio"  ,\
     "saida-tarefa-a1-marte.dat" with lines ls 5 title "Marte"  ,\
     "saida-tarefa-a1-venus.dat" with lines ls 4 title "Venus"  ,\
     "<echo '0 0'"   with points ls 1 notitle

set xrange[-20:20] 
set yrange[-20:20] 
plot "saida-tarefa-a1-jupiter.dat" with lines ls 6 title "Jupiter" ,\
    "saida-tarefa-a1-saturno.dat" with lines ls 7 title "Saturno" ,\
    "saida-tarefa-a1-urano.dat" with lines ls 8 title "Urano"  ,\
    "<echo '0 0'"   with points ls 1 notitle

set xrange[-42:42]
set yrange[-42:42]
plot "saida-tarefa-a1-netuno.dat" with lines ls 6 title "Netuno" ,\
    "saida-tarefa-a1-plutao.dat" with lines ls 7 title "Plutao" ,\
    "<echo '0 0'"   with points ls 1 notitle

unset multiplot 