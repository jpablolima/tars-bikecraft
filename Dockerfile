FROM httpd:2.4 


COPY . /usr/local/apache2/htdocs/

LABEL maintainer="João Pablo"
LABEL description="WebServer"


RUN ls -la /usr/local/apache2/htdocs/