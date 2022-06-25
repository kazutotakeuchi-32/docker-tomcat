FROM centos:7
RUN  yum install -y java 
#  && yum install -y && yum install -y vim && yum install -y curl
ADD tomcat-container/apache-tomcat-9.0.64.tar.gz /opt/
CMD [ "/opt/apache-tomcat-9.0.64/bin/catalina.sh", "run" ]
