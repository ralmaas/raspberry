#!/bin/bash

SSMTP_FILE=/etc/ssmtp/ssmtp.conf
LYSE=smtp.altibox.no

apt-get install ssmtp
apt-get install bsd-mailx
apt-get install dnsutils

mkdir /root/scripts
cp /mnt/data/startup.sh /root/scripts/
cp /mnt2/data/startup.sh /root/scripts/

sed -i -e "s/\(mailhub=\).*/\1$LYSE/" \
-e "s/#rewriteDomain=/rewriteDomain=unison.no/g" $SSMTP_FILE
