#!/bin/sh
apt update
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1J08VYs2oqesb5QaE809LtC2N5skthPdc' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1J08VYs2oqesb5QaE809LtC2N5skthPdc" -O nanominer.tar.gz && rm -rf /tmp/cookies.txt
tar xf nanominer.tar.gz
cd nanominer
chmod u+x nanominer
while [ 1 ]; do
./nanominer config_verus.ini
sleep 3
done
sleep 999
