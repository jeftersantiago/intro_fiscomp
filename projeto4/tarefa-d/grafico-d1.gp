set terminal epslatex standalone size 10cm, 18cm
set output "tarefa-d-grafico1.tex"
reset 

set xlabel "$\\theta$ rad"
set ylabel "$\\omega(\\theta)$ rad/s"

set grid 
# set size sq

set style line 1 lc rgb "blue" lw 3
set style line 2 lc rgb "red" lw 3
set style line 3 lc rgb "orange" lw 3

set multiplot layout 3, 1 

plot 'saida-tarefa-d1.dat' with lines ls 1 notitle #"$\\theta = \\pi/6$
plot 'saida-tarefa-d2.dat' with lines ls 2 notitle #"$\\theta = \\pi/6+0.03$"
plot 'saida-tarefa-d3.dat' with lines ls 3 notitle #"$\\theta = \\pi/6-0.03$"