set terminal postscript eps enhanced
set output "logging.eps"
set size 0.7,0.7
set nokey

set ylabel "Time [ms]"
set yrange[0:250]
set boxwidth 1
set grid ytics
set style fill solid 1.0 border -1

plot "logging.data" using 2: xtic(3) with boxes