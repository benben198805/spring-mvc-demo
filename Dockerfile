FROM benben198805/openjdk:8-jre-alpine-apm-agent

COPY target/*.jar /opt/app.jar

ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-jar", "/opt/app.jar", "--server.port=80"]
