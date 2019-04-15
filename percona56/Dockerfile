# FROM mango:percona-backup
# MAINTAINER writex // deprecated

FROM percona:ps-5.6.42
#  AS percona56


VOLUME ["/container/docker/mysql", "/var/dumps/mango-office.ru"]
# ADD my.cnf /etc/mysql/conf.d/my.cnf
ADD bootstrap.sh /usr/local/bin/bootstrap.sh
# CMD ["mysqld"]
CMD ["bootstrap.sh"]
EXPOSE 3306
