set terminal eps
set output "benchmark.eps"

set size 1,2

set key left top
set grid y
#set xdata time
#set timefmt "%s"
set format x "%S"
set xlabel 'seconds'
set ylabel "response time (ms)"
set datafile separator '\t'

set yrange [0:600]


# Plot the data
set multiplot layout 1,3 title "Benchmark: response time for 1 request: Apache vs Toro" font ",14"

set title "Apache in a Host Machine"
plot "../stats_apache_1req.data" using 2:5 notitle pt 1 lc rgb "red"

set title "Apache in a Docker Machine"
plot "../stats_apachedocker_1req.data" using 2:5 notitle pt 2 lc rgb "green"

set title "Toro in KVM"
plot "../stats_toro_1req.data" using 2:5 notitle pt 3 lc rgb "blue"

unset multiplot
