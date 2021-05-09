FROM tomcat:8.5-alpine
#### 镜像来源
###	 https://hub.docker.com/r/library/tomcat/
###  https://github.com/docker-library/tomcat/blob/af1646c18d6398e6cf27a29d32ff58b994d2566e/8.5/jre8-alpine/Dockerfile
####
LABEL maintainer "yxh <xianhe_yan@sina.com>"
#### 清理webapps
RUN cd /usr/local/tomcat/webapps && rm -rf /usr/local/tomcat/webapps/*
#### 添加war包到webapps下
ADD ./yxh-ms.war /usr/local/tomcat/webapps/yxh-ms.war
#### 指定端口号
EXPOSE 8080