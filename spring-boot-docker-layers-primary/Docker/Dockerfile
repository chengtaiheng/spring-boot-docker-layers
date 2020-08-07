##
# chth's maven project layers playground
##

#预构件
# 什么镜像为基础
FROM registry.cn-shanghai.aliyuncs.com/yingzhuo/springboot:8 as builder

#复制jar包到特定目录
COPY *.jar /opt/chth.jar

#将jar包分层
RUN java -Djarmode=layertools -jar /opt/chth.jar extract

FROM registry.cn-shanghai.aliyuncs.com/yingzhuo/springboot:8

#从预构件的镜像中拷贝分层到当前镜像的一个目录中
COPY --from=builder /opt/application ./
COPY --from=builder /opt/dependencies/ ./
COPY --from=builder /opt/spring-boot-loader ./
COPY --from=builder /opt/snapshot-dependencies/ ./

# 作者信息
MAINTAINER chengtaiheng "chth668@163.com"

# 创建一个可以从本地主机或其他容器挂载的挂载点，一般用来存放数据库和需要保持的数据等
VOLUME /chth

# 容器启动后的命令 且不被docker run 提供的参数覆盖，使用JarLauncher来分层收集信息，并运行程序
ENTRYPOINT ["java", "org.springframework.boot.loader.JarLauncher"]
