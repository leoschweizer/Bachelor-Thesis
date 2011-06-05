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
set key top left
set grid

log2(x) = log(x)/log(2)
id(x) = x*35040*ceil(log2(x))
value(x) = x*35040*7
datetime(x) = 35040*16+35040*ceil(log2(35040*x))
f(x) = (id(x) + value(x) + datetime(x)) / 8 / 1024 / 1024

plot 'consumption-estimation.rle.data' using ($1):($14/1024) with linespoints title 'RLE', 'consumption-estimation.data' using ($1):($14/1024) with linespoints title 'Domain Coding only', f(x) with lines title 'Optimum'