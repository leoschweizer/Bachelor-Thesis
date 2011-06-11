set terminal postscript eps enhanced
set output "logging.eps"
set size 0.7,0.7
set nokey

set ylabel "Time [ms]"
set yrange[0:200]
set boxwidth 1
set grid ytics
set style fill pattern 4
set xtic scale 0

plot "logging.data" using 1:2:3: xticlabels(4) with boxerror