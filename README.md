# spring-boot-docker-layers

## cause
**当用jar包制作Docker镜像时，有时只改了某些地方，但是制作镜像却要将整个jar包换掉，spring-boot2.3以后提供了一个功能，
可将jar包分层，这样制作镜像的时候，每一个层一个镜像，这样代码改变后制作镜像时只需要制作内容改变的层的镜像，而其他镜像可以用
以前的缓存镜像层。**

## 第一步将本项目拷贝到linux虚拟机，需要准备以下配置：JAVA、MAVEN、DOCKER

## 第二步赋予运行脚本运行权限,(在本项目根目录下)运行以下命令
chmod +x refactor.sh
chmod +x restart.sh

## 第三步根据需要修改日志投射到本地的目录，创建本地的映射目录
目前启动脚本restart.sh里面默认的本地的目录是第15行的 **/docker_project/spring-boot-docker-layers-primary/logs**
可根据实际需要更改，并创建对应的目录

## 第四步依次运行以下脚本启动项目
### refactor.sh(构建脚本)
### restart.sh(启动脚本)

## 第五步访问项目验证
访问 http://{ip地址}:1667/layer-test?param={字母}
会返回字母的大写即为成功

参考资料：https://blog.tratif.com/2020/05/20/spring-tips-2-layered-jars-with-spring-boot-2-3-0/

