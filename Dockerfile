FROM openjdk:23-jdk

RUN mkdir -p /opt/app/

WORKDIR /opt/app/

COPY . /opt/app/

RUN chmod +x /opt/app/gradlew

RUN microdnf install findutils

CMD ["./gradlew", "bootRun"]