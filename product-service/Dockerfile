FROM adoptopenjdk/openjdk11
ARG JAR_FILE
VOLUME /tmp
RUN mkdir -p /opt/product-service
COPY build/libs/${JAR_FILE} /opt/product-service/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/product-service/app.jar"]
