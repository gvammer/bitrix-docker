#!/bin/bash

id
ps axuf
find /
ls -lah /var/backup
find /var/backup
dir=$(find /var/dumps/mango-office.ru  -maxdepth 1 -mindepth 1  -type d  | egrep '[0-9]{4}(-[0-9]{2}){2}' | sort -n | tail -n  1)
#time innobackupex --copy-back ${dir}
#chown mysql:mysql -R /var/lib/mysql
#chmod 750 /var/lib/mysql/
#mysql_upgrade
#mysql -e 'flush privileges;'

exit 0

test -d "${dir}" -a -n "${dir}" && {

	systemctl stop mysql
	test -d /var/lib/mysql && {
		rm -rf /var/lib/mysql/
	}
	time innobackupex --copy-back ${dir}
	chown mysql:mysql -R /var/lib/mysql
	chmod 750 /var/lib/mysql/

	systemctl start mysql

	mysql_upgrade
	mysql -e 'flush privileges;'
}
