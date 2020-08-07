#!/usr/bin/env bash

# 删除原有的镜像
docker rmi chth/spring-boot-docker-layers-primary:1.0.0
docker rmi chth/spring-boot-docker-layers-primary:latest

#用pom文件 clean 打包项目构建docker镜像
mvn -f pom.xml clean package
mvn -f ./spring-boot-docker-layers-primary/pom.xml docker:build

mvn clean -q
