FROM micgn/rpi-jdk8:latest
MAINTAINER Michael

# for being able to view logs
ENV TERM xterm-256color
RUN apt-get -y install less

ADD apache-tomcat-8.0.27.tar.gz /
RUN mv apache-tomcat-8.0.27 tomcat
ENV PATH /tomcat/bin/:$PATH

EXPOSE 8080

ADD server.xml /tomcat/conf/
ADD setenv.sh /tomcat/bin/

CMD catalina.sh run

