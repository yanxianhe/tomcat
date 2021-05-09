# tomcat:8.5-alpine

#### 制作docker 镜像基于 tomcat:8.5-alpine
> 需要一个安装docker 机器可以上互联网,也可借助registry.hub.docker.com构建

* 创建一个空白的文件夹,文件创建 Dockerfile文件、把项目war 重命名 yxh-ms.war 放到同一个文件夹下


~~~~~~
~\tomcat>ls
Dockerfile  README.md  yxh-ms.war
~~~~~~

#### 快速构建dockerfile

~~~~~~
git clone https://github.com/yanxianhe/tomcat.git

cd tomcat

docker build -t my_tomcat:v1.0.0 .

docker run --name my_app -p 8080:8080  -d my_tomcat:v1.0.0

~~~~~~