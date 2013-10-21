reset
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set title "Recomendação"
set xlabel "Avaliações"
set ylabel "Frequência"
set yrange [0:20]
set xrange [0:6]
set term png truecolor
#set term epslatex
set output 'avalia.png'
set grid
set boxwidth 0.85 relative
set style fill transparent solid 0.6 
plot "avaliacao.dat" using 1:2 with boxes lc rgb"green" notitle
