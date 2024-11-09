#!/usr/bin/bash
#plot_xnum.sh

#
set terminal png
set output "40MB_worker_Comp.png"
set xlabel "Total number of requests"
set ylabel "Requests per second"
set title "target:40MB,concurrently:10, Average RPS comparison"
set logscale x
plot './resolt/data_default_40M.dat' with lines title "default", './resolt/data_worker4_40M.dat' with lines title "Worker process:4 + connection:1024(default)", './resolt/data_worker4pro512_40M.dat' with lines title "Worker process:4 + connection:512",'./resolt/data_worker4pro2048_40M.dat' with lines title "Worker process:4 + connection:2048"
exit
#
