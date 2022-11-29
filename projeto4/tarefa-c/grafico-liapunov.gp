# set terminal epslatex standalone size 12cm, 10cm
# set output "tarefa-c-grafico.tex"
# reset 

set xlabel "Tempo (s)"
set ylabel "$\\ln(\\Delta \\theta (t))$ (radianos)"

set grid 
set style line 1 lc rgb "blue" lw 3
set style line 2 lc rgb "red" lw 3

f(x) = a*x + b

fit f(x) "saida-tarefa-c.dat" via a, b 

plot 'saida-tarefa-c.dat' with lines ls 1 title " slajsflkj",\
     f(x) ls 2 notitle # "$f(x) = a \\cdot x + b - Ajuste linear$"
