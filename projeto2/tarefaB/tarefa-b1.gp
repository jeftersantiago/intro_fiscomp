set terminal epslatex standalone size 12cm, 10cm
set output "tarefa-b1-grafico-1.tex"

# set title ""
set xlabel "Posição $(x)$"
set ylabel "Número de andarilhos"

set style line 1 lc rgb "red" lw 3


plot "saida-tarefa-b1.dat" w l smooth freq ls 1 t "$p = \\frac{1}{2}$"
