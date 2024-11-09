#!/usr/bin/bash
#plot_xnum.sh
#
set terminal png
set output "40MB_Gzip_Comp.png"
set xlabel "Total number of requests"
set ylabel "Average Requests per second"
set title "target:40MB,concurrently:10, Average RPS comparison"
set logscale x
plot './resolt/data_default_40M.dat' with lines title "default", './resolt/data_gzipcomp9_40M.dat' with lines title "gzip comp level:9",'./resolt/data_gzip_40M.dat' with lines title "gzip comp level:6",'./resolt/data_gzipcomp3_40M.dat' with lines title "gzip comp level:3"
exit
exit
#
