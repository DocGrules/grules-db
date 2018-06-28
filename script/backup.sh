tar -zcvf /docker/backup/grules-db-$(date +%Y-%m-%d-%H.%M).tar.gz /docker/postgres

find /docker/backup -mtime +30 -exec rm {} \;