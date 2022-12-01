set terminal epslatex standalone size 20cm, 20cm
set output "tarefa-d-grafico.tex"
reset 


set style line 1 lc rgb "blue" lw 3
set style line 2 lc rgb "red" lw 3
set style line 3 lc rgb "orange" lw 3

set multiplot layout 3, 2 

set ylabel "$\\omega(\\theta)$ rad/s"
plot 'saida-tarefa-d1.dat' with lines ls 1 notitle 
unset ylabel
plot 'saida-tarefa-d1-1.dat' with lines ls 1 notitle 
set ylabel "$\\omega(\\theta)$ rad/s"
plot 'saida-tarefa-d2.dat' with lines ls 2 notitle 
unset ylabel
plot 'saida-tarefa-d2-2.dat' with lines ls 2 notitle 

set ylabel "$\\omega(\\theta)$ rad/s"
set xlabel "$\\theta$ rad"

plot 'saida-tarefa-d3.dat' with lines ls 3 notitle 
unset ylabel
plot 'saida-tarefa-d3-3.dat' with lines ls 3 notitle 

unset multiplot 

