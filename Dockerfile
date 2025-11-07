FROM openjdk:17
EXPOSE 8010
COPY "target/Clase12_EurekaClient_Addition-0.0.1-SNAPSHOT.jar" /tmp
WORKDIR /tmp
ENTRYPOINT ["java","-jar","Clase12_EurekaClient_Addition-0.0.1-SNAPSHOT.jar", "--eureka.client.service-url.defaultZone=http://eureka-server:8761/eureka"]