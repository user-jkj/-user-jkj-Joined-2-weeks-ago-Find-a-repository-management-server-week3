#!/bin/sh
# measure40.sh

URL=http://127.0.0.1/target/40M.dat
RESOLT_FILE=resolt/data_~~~_40M.dat
ALLDATA_FILE="resolt/alldata/alldata_~~~_40M.dat"
ATTEMPT_COUNT=30


mkdir -p resolt/alldata


rm -f ${RESOLT_FILE} ${ALLDATA_FILE}

for request in 10 50 100 500 1000 5000 10000 
do
    sum=0
    echo "Request ${request}:" >> ${ALLDATA_FILE}

    for i in $(seq ${ATTEMPT_COUNT})
    do
        result=$(ab -c 10 -n ${request} ${URL} | grep 'Requests per second' | sed -r 's/.*( +)([0-9]+\.[0-9][0-9]) .*/\2/')
        echo "  ${result}" >> ${ALLDATA_FILE} # AllData格納
        sum=$(echo "$sum + $result" | bc)
    done

    ave=$(echo "scale=2; $sum / ${ATTEMPT_COUNT}" | bc)
    echo "${request} ${ave}" >> ${RESOLT_FILE} # 平均値格納
done