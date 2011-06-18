set terminal postscript eps enhanced
set output "merge.eps"
set size 0.7,0.7
#set terminal png
#set output 'merge.png'

set xlabel "Base Dataset [Number of Profiles]"
set ylabel "Time [ms]"
set style data histogram
set style histogram cluster gap 2
#set style histogram rowstacked
set style fill pattern border -1
set boxwidth 0.8
set key over nobox
set grid y
set xtic scale 0
set logscale y

plot 'merge.data' using 2:xtic(1) ti col fs pattern 4, '' u 4 ti col fs pattern 3