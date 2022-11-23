set terminal epslatex standalone size 13cm, 17cm
set output "tarefa-a-grafico-energias-oscilacao.tex"
# reset

set style line 1 lc rgb "red" lw 1.5
set style line 2 lc rgb "blue" lw 1.5

set xlabel "Tempo (s)"

set multiplot layout 2,1

set title "Ângulo $\\theta$ em função do tempo \n usando métodos de Euler e Euler-Cromer."
set ylabel "$\\theta$ (radianos)"
plot 'data-oscilacoes2.dat' using 0:2 with lines ls 1 t "Método de Euler" ,\
     'data-oscilacoes2.dat' using 0:4 with lines ls 2 t "Método de Euler-Cromer"

set title "Energia do sistema nos métodos de Euler e Euler-Cromer."
set logscale xy
set ylabel "Energia"
plot 'data-energias2.dat' using 0:2 with lines ls 1 t "Método de Euler",\
     'data-energias2.dat' using 0:3 with lines ls 2 t "Método de Euler-Cromer"



     


