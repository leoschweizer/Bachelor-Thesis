set terminal postscript eps enhanced
set output "consumption-estimation.eps"
set size 0.7,0.7
#set terminal png
#set output "consumption-estimation.png"
set notitle
set xlabel "Number of Households" 
set ylabel "RAM Consumption [MB]" 
set logscale x 10 
set logscale y 10
set nokey
set grid

log2(x) = log(x)/log(2)
f(x)=(35040*ceil(log2(35040))+35040*ceil(log2(x))+x*ceil(log2(x))+x*ceil(log2(100)))/(8 * 1024.0 * 1024)

plot 'consumption-estimation.rle.data' using ($1):($14/1024) with linespoints notitle, f(x)