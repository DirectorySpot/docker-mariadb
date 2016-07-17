FROM centos:7
RUN yum install -y mariadb-server
COPY bin/docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

EXPOSE 3306
CMD ["/usr/libexec/mysqld"]
