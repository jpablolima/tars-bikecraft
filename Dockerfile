FROM ubuntu

RUN apt-get update && apt-get install -y apache2

ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="/var/run/apache2.pid"
ENV APACHE_RUN_USER="www.data"
ENV APACHE_LOG_DIR="/var/log/apache2"


LABEL maitainer="João Pablo"
LABEL description="WebServer"

COPY . /var/www/html


WORKDIR /var/www/html

VOLUME [ "/var/www/html" ]

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/apache2ctl" ]
CMD [ "-D", "FOREGROUND" ]
