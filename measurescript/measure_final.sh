#!/bin/sh
# measure_final.sh
#総リクエスト10000,40Mでの一回あたりの計測時間は約90秒、100回平均で約150分
#

URL=http://127.0.0.1/target/40M.dat
FILE=resolt/data_final_40M.dat
ATTEMPT_COUNT=100
COOLDOWN=30

mkdir -p resolt

# シェル起動直後の処理で測定値が下振れるのをケア
echo "Starting cooldown period of ${COOLDOWN} seconds..."
for i in $(seq ${COOLDOWN} -1 1)
do
    echo -ne "Cooldown: ${i} seconds remaining...\r"
    sleep 1
done
echo -e "\nCooldown complete. Starting tests."

rm -f ${FILE}

for i in $(seq ${ATTEMPT_COUNT})
do
    echo -n "${i} " >> ${FILE}
    ab -c 10 -n 10000 ${URL} | grep 'Requests per second' | sed -r 's/.*( +)([0-9]+\.[0-9][0-9]) .*/\2/' >> ${FILE}
done
