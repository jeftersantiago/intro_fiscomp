set terminal epslatex standalone size 35cm, 20cm
set output "tarefa-e-grafico.tex"

# reset 

set style line 1 lc rgb "blue" lw 3
set style line 2 lc rgb "red" lw 3
set style line 3 lc rgb "orange" lw 3

set multiplot layout 1, 2 

plot 'saida-poincare1-f1.dat' with points ls 1 notitle 
plot 'saida-poincare1-f2.dat' with points ls 2 notitle 
unset multiplot 

