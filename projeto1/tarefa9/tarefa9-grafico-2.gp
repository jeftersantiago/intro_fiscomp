set terminal epslatex standalone size 10cm, 10cm
set output "tarefa9-grafico-2.tex"

set title "Razão entre volume do cubo e da esfera."
set xlabel "Número de dimensões"
set ylabel "$\\frac{1}{\\text{V_c/V_e}}$"

set style line 1 lc "blue" lw 3
# set style line 2 lc rgb 'black' pt 7   # square

set xrange[0:25]
set yrange[*:*]

# set logscale y

set key right top
set key spacing 2

unset grid

plot "esfera-cubo.dat" w l  ls 1 notitle 
