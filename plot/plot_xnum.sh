#!/usr/bin/bash
#plot_xnum.sh

#
set terminal png
set output "40MB_Kernel_Comp.png"
set xlabel "Number of Access"
set ylabel "Requests per second"
set title "target:40MB,concurrently:10, Average RPS comparison"
set logscale x
plot './resolt/data_~~~_40M.dat' with lines title "~~~", './resolt/data_~~~_40M.dat' with lines title "~~~",'./resolt/data_~~~_40M.dat' with lines title "~~~"
exit
#
