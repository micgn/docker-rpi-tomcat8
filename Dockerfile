FROM micgn/rpi-jdk8
MAINTAINER Michael
ADD apache-tomcat-8.0.27.tar.gz /
RUN mv apache-tomcat-8.0.27 tomcat
ENV PATH /tomcat/bin/:$PATH
EXPOSE 8080
CMD ["catalina.sh", "run"]
