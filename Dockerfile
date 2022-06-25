FROM centos:7
RUN  yum install -y java  && yum install -y wget && yum install -y vim && yum install -y curl

RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz
RUN mv apache-tomcat-9.0.64.tar.gz /opt && tar zxf /opt/apache-tomcat-9.0.64.tar.gz
RUN /apache-tomcat-9.0.64/bin/startup.sh

CMD ["/bin/bash"]
