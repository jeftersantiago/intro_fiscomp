set terminal epslatex standalone size 13cm, 10cm
set output "tarefa-a-saida.tex"

set xlabel "h"
set ylabel "Erro"

set xrange[1e-9:1]
set yrange[1e-15:1e3]

set style line 1 lc rgb "black"  lw 1 pt 9
set style line 2 lc rgb "red"    lw 1 pt 6
set style line 3 lc rgb "blue"   lw 1 pt 11 
set style line 4 lc rgb "orange" lw 1 pt 9
set style line 5 lc rgb "purple" lw 1 pt 6
set style line 6 lc rgb "green"  lw 1 pt 5

set logscale yx

set key spacing 2 font "Helvetica, 16"
set key box lt -1 lw 1

set key outside;
set key bottom center;
set key spacing 1.5

set logscale xy
set pointsize 3.0


set format x "10^{%T}"
set format y "10^{%T}"

# set ytics(10e-14, 10e-12, 10e-10, 10e-9, 10e-8, 10e-7, 10e-6, 10e-5, 10e-4, 10e-3, 10e-2, 10e-1, 1, 10e1, 10e2)
# set xtics(10e-10, 10e-9, 10e-8, 10e-7, 10e-6, 10e-5, 10e-4, 10e-3, 10e-2, 10e-1, 1)

plot 'saida.dat' using 1:2 with linespoints smooth freq ls 1 t "Derivada simétrica (3 pontos)"\
     ,'saida.dat' using 1:3 with linespoints smooth freq ls 2 t "Derivada à direita (2 pontos)"\
     ,'saida.dat' using 1:4 with linespoints smooth freq ls 3 t "Derivada à esquerda (2 pontos)"\
     ,'saida.dat' using 1:5 with linespoints smooth freq ls 4 t "Derivada simétrica (5 pontos)"\
     ,'saida.dat' using 1:6 with linespoints smooth freq ls 5 t "Derivada segunda simétrica (5 pontos)"\
     ,'saida.dat' using 1:7 with linespoints smooth freq ls 6 t "Derivada terceira anti-simétrica (5 pontos)"\
     