FROM openjdk

RUN  mkdir -p /base-service
# COPY target/base-service-1.0.0-SNAPSHOT.jar /app.jar
ADD base-service-1.0.0-SNAPSHOT.jar /app.jar
# ADD target/base-service-1.0.0-SNAPSHOT.jar /app.jar

WORKDIR /
CMD java -Duser.timezone=Asia/Shanghai -jar app.jar


# FROM c-imageservice-registry.cn-beijing.cr.aliyuncs.com/common/java17:builder AS build0
# VOLUME /tmp
# COPY target/smp-basic-service-1.0.0.jar /app.jar
# WORKDIR /
# CMD java -Duser.timezone=Asia/Shanghai -jar app.jar



# FROM eclipse-temurin:17-jdk-jammy

# WORKDIR /app

# RUN mvn dependency:resolve

# COPY src ./src

# CMD ["mvn", "spring-boot:run"]


