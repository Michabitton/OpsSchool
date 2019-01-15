#!/bin/bash
cd /etc/apache2/sites-enabled
sudo nano 000-default

        <Directory /var/www/>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride None
                Order allow,deny
                Allow from all
                Allow from 192.168.100.10
        </Directory>
		
		
Change from deny from all to allow from all
And allow from the server itself.

sudo sed -i 's/deny from all/Allow from all/g' /etc/apache2/sites-enabled/000-default
#add fix to exercise3 here
