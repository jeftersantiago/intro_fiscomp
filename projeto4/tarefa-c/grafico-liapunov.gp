# set terminal epslatex standalone size 12cm, 13cm
# set output "tarefa-c-grafico.tex"
reset 

set grid 

set style line 1 lc rgb "blue" lw 3
set style line 2 lc rgb "red" lw 3

f(x) = a*x + b
g(x) = c*x + d

fit f(x) "saida-tarefa-c1.dat" via a, b 
fit g(x) "saida-tarefa-c2.dat" via c, d

set multiplot layout 2, 1 

set ylabel "$\\ln(\\Delta \\theta (t))$ rad"

plot 'saida-tarefa-c1.dat' with lines ls 1 title "",\
     f(x) ls 2 title 'Sistema com $F_0 = 1/2$'

set xlabel "Tempo (s)"

set key bottom right

plot 'saida-tarefa-c2.dat' with lines ls 1 title "",\
     g(x) ls 2 title 'Sistema com $F_0 = 6/5$'
