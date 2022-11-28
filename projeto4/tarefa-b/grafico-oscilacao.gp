# set terminal epslatex standalone size 12cm, 10cm
# set output "tarefa-b3-grafico-oscilacoes.tex"
reset 

set xlabel "Tempo (s)"
set ylabel "$\\theta$ (radianos)"

set style line 1 lc rgb "red" lw 4

plot 'saida-tarefa-b3.dat' using 1:2 with lines ls 1 title "Modelo com \\gamma = \\frac{1}{2}"
