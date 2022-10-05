set terminal epslatex standalone size 25cm, 8cm font ",10"
set output "tarefa-b2-grafico-2.tex"

# set title ""
set xlabel "Posição final"
set ylabel "Número de andarilhos"

set style line 1 lc rgb "red" lw 3
set style line 2 lc rgb "black" lw 3
set style line 3 lc rgb "blue" lw 3

# set size sq

set multiplot layout 1,3 \
    title "Histogramas de posições"\
    font ",18"

# grafico 1
plot "saida-tarefa-b2-p3.dat" w l smooth freq ls 1 t "$p = \\frac{1}{3}$"

# grafico 2
plot "saida-tarefa-b2-p4.dat" w l smooth freq ls 2 t "$p = \\frac{1}{4}$"

# grafico 3

set xtics('$-680$' -680,\
'$-640$' -640,\
'$-600$' -600,\
'$-560$' -560,\
'$-520$' -520)

plot "saida-tarefa-b2-p5.dat" w l smooth freq ls 3 t "$p = \\frac{1}{5}$"

unset multiplot