set terminal epslatex standalone size 25cm, 30cm
set output "tarefa-c-grafico.tex"

set pointsize 2
set style line 1 lc rgb "blue" lw 3

set multiplot layout 3,2 \
#    title "Gráfico de difusão"\
#    font ",13"

# set tmargin 3
# set bmargin 4
# set rmargin 4
# set lmargin 4

set xrange[-2500:3000]
set yrange[-3000:2500]


set title "$N = 10^1$"
plot "saida-tarefa-n1.dat" w p ls 1 pointtype 7 notitle

set title "$N = 10^2$"
# set xrange[-10:10]
# set yrange[-10:10]
plot "saida-tarefa-n2.dat" w p ls 1 pointtype 7 notitle 


set title "$N = 10^3$"
# set xrange[-10:10]
# set yrange[-10:10]
plot "saida-tarefa-n3.dat" w p ls 1 pointtype 7 notitle

set title "$N = 10^4$"
plot "saida-tarefa-n4.dat" w p ls 1 pointtype 7 notitle

# set xtics rotate by 45 offset -1, -2
set title "$N = 10^5$"
plot "saida-tarefa-n5.dat" w p ls 1 pointtype 7 notitle
set title "$N = 10^6$"
plot "saida-tarefa-n6.dat" w p ls 1 pointtype 7 notitle

unset multiplot
