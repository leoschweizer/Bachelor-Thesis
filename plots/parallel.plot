set terminal postscript eps enhanced
set output "parallel.eps"
set size 0.7,0.7
#set nokey

set xlabel "Number of Threads"
set ylabel "Time [s]"
#set yrange[1:100000]
set boxwidth 1
set grid ytics
set style fill pattern 4
#set logscale y 2
#set logscale x 2
#set xtic scale 0
set xrange[1:12]
set yrange [0:]
set offset graph 0.1, graph 0.1, graph 0, graph 0
f(x) = (29935/x)/1000

plot "parallel.data" using 1:($2/1000):($3/1000): xticlabels(1) with errorbars title "Actual measurement", \
f(x) title "Theoretical optimum"
#"parallel.data" using 1:($3/1000) with lines