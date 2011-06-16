set terminal postscript eps enhanced
set output "parallel.eps"
set size 0.7,0.7
set nokey

set xlabel "Number of Threads"
set ylabel "Time [ms]"
#set yrange[1:100000]
set boxwidth 1
set grid ytics
set style fill pattern 4
#set logscale y 2
#set logscale x 2
#set xtic scale 0
set xrange[0:8]

plot "parallel.data" using 1:3:4: xticlabels(2) with errorbars, \
"parallel.data" using 1:(28664/$2) smooth csplines, \
"parallel.data" using 1:3 with lines