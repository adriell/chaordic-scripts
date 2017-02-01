#!/bin/bash

##################################
#				 #
#				 #
#    Script: Agendar Job         #
#				 #
#				 #
##################################
/usr/bin/crontab -r

(/usr/bin/crontab -l; echo "00 12 * * * sh /opt/jobreport.sh") | crontab -
(/usr/bin/crontab -l; echo "*/30 * * * * /opt/puppetlabs/bin/puppet apply /etc/puppetlabs/code/environment/production/site.pp") | crontab -

