set terminal epslatex standalone size 15cm, 15cm
set output "tarefa-c-grafico.tex"
reset

set xrange[-3:3]
set yrange[-5:5]

set style line 1 lc rgb '#4c2275' lw 3
set style line 2 lc rgb '#fa3939' lw 3

set style line 12 lc rgb '#808080' lt 0 lw 3
set grid back ls 12
set zeroaxis

f(x) = x**3 - 1.5 * x**2 - 1.5 * x + 1

set arrow 1 from -3,0 to 3,0 nohead
set arrow 2 from 0,-5 to 0,5 nohead

set pointsize 3
set size square

plot f(x) w l ls 1 notitle,\
     "points.dat" w p ls 2 pointtype 7 notitle