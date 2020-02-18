#!/bin/bash
#add fix to exercise3 here
sed -i 's/Deny from all/Allow from All/' /etc/apache2/sites-enabled/000-default
/etc/init.d/apache2 restart
