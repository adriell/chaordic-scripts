#!/bin/bash
IP=$*
if [ -z $1 ] ; then
	   echo "VC NÃO INFORMOU O IP DO SERVIDOR OU O NOME DO SERVIDOR"
exit 1
fi
ab -r -n 100000 -c 1000 http://$IP:3001/
