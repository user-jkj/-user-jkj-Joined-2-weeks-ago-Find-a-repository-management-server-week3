#!/usr/bin/bash
#plot_xnum.sh

#
set terminal png
set output "40MB_Rbuf_Comp.png"
set xlabel "Total number of requests"
set ylabel "Average Requests per second"
set title "target:40MB,concurrently:10, Average RPS comparison"
set logscale x
plot './resolt/data_default_40M.dat' with lines title "Default(GENERIC)", './resolt/data_MYKERNEL_40M.dat' with lines title "MYKERNEL", './resolt/data_rbuf16_40M.dat' with lines title "receive buf size:16MB",'./resolt/data_rbuf32_40M.dat' with lines title "recieve buf size:32MB",'./resolt/data_rbuf64_40M.dat' with lines title "recieve buf size:64MB"
exit
#
