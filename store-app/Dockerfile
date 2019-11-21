FROM adoptopenjdk/openjdk11
ARG JAR_FILE
VOLUME /tmp
RUN mkdir -p /opt/store-app
COPY build/libs/${JAR_FILE} /opt/store-app/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/store-app/app.jar"]
