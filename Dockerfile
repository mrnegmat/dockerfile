FROM ubuntu:16.04
RUN apt update
RUN apt install -y default-jdk 
EXPOSE 8080
RUN apt install –y tomcat9
RUN apt install -y maven 
RUN apt install –y git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git 
RUN cd boxfuse-sample-java-war-hello.git
RUN mvn package
RUN cd target
COPY hello-1.0.war /var/lib/tomcat9/webapps/


