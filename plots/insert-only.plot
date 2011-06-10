set terminal postscript eps enhanced
set output "insert-only.eps"
set size 0.7,0.7
#set terminal png
#set output 'demo.png'
set nokey

set ylabel "Time [ms]"
set yrange[0:800]
set boxwidth 1
set grid ytics
set style fill solid 1.0 border -1

plot "insert-only.data" using 2: xtic(3) with boxes