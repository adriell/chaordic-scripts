#!/bin/bash

##################################
#				 #
#				 #
#    Script: Parser Log Nginx    #
#				 #
#				 #
##################################


cat /var/log/nginx/nginx.access.app.log | awk '{ print $9 $7}' | sort | uniq -c | sort > report.txt

echo "Bom dia, Segue em anexo o relatório solicitado" | mail -A report.txt -s "Relatório de Acesso ao sistema app " adriell.ads@gmail.com

