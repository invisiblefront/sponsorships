sudo kill $(sudo lsof -t -i:4000) && passenger start /var/www/yellowings_mc/current -a 151.236.10.206 -p 4000 -d -e production