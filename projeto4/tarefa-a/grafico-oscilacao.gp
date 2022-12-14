set terminal epslatex standalone size 15cm, 10cm
set output "tarefa-a-grafico-oscilacoes.tex"
reset 

set xlabel "Tempo (s)"
set ylabel "$\\theta$ (radianos)"

set style line 1 lc rgb "red" lw 3 
set style line 2 lc rgb "blue" lw 3 

plot 'saida-oscilacoes.dat' using 0:2 with lines ls 1 t "Método de Euler" ,\
     'saida-oscilacoes.dat' using 0:4 with lines ls 2 t "Método de Euler-Cromer"
