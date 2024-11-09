#!/usr/bin/bash
#plot_variation.sh
#

set terminal png
set output "default_variation.png"
set xlabel "Count of Attempsts"
set ylabel "Requests per second"
set title "target:40MB,concurrently:10, RPS variation of 30 trials"
plot './resolt/defoN10.dat' with lines title "Total number of requests:10", './resolt/defoN1000.dat' with lines title "Total number of requests:1000", './resolt/defoN10000.dat' with lines title "Total number of requests:10000"
exit
#
