#!/usr/bin/env bash
#鍋滄鍘熸湁瀹瑰櫒
docker stop spring-boot-docker-layers-primary 1>/dev/null 2>&1

#鍒犻櫎鍘熸湁瀹瑰櫒
docker rm   spring-boot-docker-layers-primary 1>/dev/null 2>&1

#鏋勫缓涓€涓柊瀹瑰櫒
docker run \
	-i \
	-d \
	-t \
	-p 1667:1667 \
	--name spring-boot-docker-layers-primary \
	-v /docker_project/spring-boot-docker-layers-primary/logs:/chth \
	chth/spring-boot-docker-layers-primary:1.0.0 /bin/bash \
	-c "while true;do echo hello;sleep 5;done"
