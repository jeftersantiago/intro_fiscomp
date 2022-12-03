set terminal epslatex standalone size 20cm, 20cm
set output "tarefa-c-grafico.tex"

# reset 

set style line 3 lc rgb "orange" lw 3

plot 'output2.dat' with points ls 1 notitle 
