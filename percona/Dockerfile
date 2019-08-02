# FROM mango:percona-backup

FROM percona:5.7
#FROM percona:ps-5.6.42
#  AS percona56
# MAINTAINER writex
# LABEL com.mangotele.vendor "Mango-Office"

# VOLUME ["/container/docker/mysql", "/var/dumps/mango-office.ru"]
# VOLUME ["/var/dumps/mango-office.ru"]
# docker volume create --driver local --opt type=nfs --opt o=addr=node1.db.prod.backup.ru.mgo.su,ro --opt=device=:/var/dumps site-dumps
# docker volume create --driver local --opt type=nfs --opt o=addr=192.168.68.10,rw --opt=device=:/var/backup/site site-backup
VOLUME ["site-backup:/var/backup"]
# ADD my.cnf /etc/mysql/conf.d/my.cnf
ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes
#  NFS_VOL_NAME=node1.db.prod.backup.ru.mgo.su:/var/backup/site NFS_LOCAL_MNT=/var/dumps
#ADD bootstrap.sh /docker-entrypoint-initdb.d/bootstrap.sh
# CMD ["mysqld"]
#CMD ["bootstrap.sh"]
EXPOSE 3306
