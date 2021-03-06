set terminal postscript eps enhanced
set output "insert-only.eps"
set size 0.7,0.7
#set terminal png
#set output 'demo.png'
set nokey

set ylabel "Time [ms]"
set yrange[0:700]
set boxwidth 1
set grid ytics
set style fill pattern 4
set xtic scale 0

plot "insert-only.data" using 1:2:3: xticlabels(4) with boxerror