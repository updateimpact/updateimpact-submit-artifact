FROM maven:3.3.9-jdk-8

RUN mkdir -p /usr/src/ui
WORKDIR /usr/src/ui

ADD settings.xml settings.xml
ADD pom.xml pom.xml
ADD create-repo/maven-repo maven-repo

ENTRYPOINT mvn --settings settings.xml -Dmaven.repo.local=maven-repo install updateimpact:submit
