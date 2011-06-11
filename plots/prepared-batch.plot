set terminal postscript eps enhanced
set output "prepared-batch.eps"
set size 0.7,0.7
set nokey

set ylabel "Time [ms]"
set yrange[1:100000]
set boxwidth 1
set grid ytics
set style fill pattern 4
set logscale y 10
set xtic scale 0

plot "prepared-batch.data" using 1:2:3: xticlabels(4) with boxerror