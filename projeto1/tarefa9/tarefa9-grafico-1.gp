set terminal epslatex standalone size 10cm, 10cm
set output "tarefa9-grafico-1.tex"

set title "Volume de uma esfera de raio unitário \n por número de dimensões"
set xlabel "Número de dimensões"
set ylabel "Volume"

set style line 1 lc "blue" lw 3
set style line 2 lc rgb 'black' pt 7   # square

set xrange[0:20]

set key right top
set key spacing 2

unset grid

plot "dimensoes-esferas.dat" w l  ls 1 \
     t " $V_d = \\frac{\\pi^{d/2}}{\\Gamma(\\frac{d}{2} + 1)} R^{d}$",\
     "dimensoes-esferas.dat"w p ls 2 t "Ponto cálculado"
