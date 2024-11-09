#!/usr/bin/bash
#plot_xnum.sh

#
set terminal png
set output "Conclusion Configuration.png"
set xlabel "Count of Attempsts"
set ylabel "Requests per second"
set title "target:40MB,concurrently:10, Total number of requests 10000"
plot './resolt/data_final_40M.dat' with lines title "Conclusion Configuration",'./resolt/data_final_ave.dat' with lines title "Average of 100 times",
exit
#
