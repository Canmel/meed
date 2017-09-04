FROM daocloud.io/tcsoft2016/springboot-maven

ENV RUN_ENV prod

COPY pom.xml /tmp/build/
COPY src /tmp/build/src

RUN echo "root:1234" | chpasswd \
    && cd /tmp/build \
    && mkdir /app \
    && mvn clean package -q -P${RUN_ENV} -DskipTests=true \
    && mv target/*.jar /app/app.jar \
    && rm -rf /tmp/build

CMD ["java", "-Xmx200m", "-jar", "/app/app.jar", "--spring.profiles.active=${active_config}"]

EXPOSE 1111
EXPOSE 1112