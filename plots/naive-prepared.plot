set terminal postscript eps enhanced
set output "naive-prepared.eps"
set size 0.7,0.7
set nokey

set ylabel "Time [s]"
set yrange[1:]
set boxwidth 1
set grid ytics
set style fill pattern 4
#set logscale y 5
set xtic scale 0

plot "naive-prepared.data" using 1:($2/1000):($3/1000): xticlabels(4) with boxerror