FROM maven:3.5.2-jdk-8-alpine as build
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package
RUN ls -a 

FROM payara/micro
  
COPY --from=build /tmp/target/personRegister-0.0.1-SNAPSHOT.war $DEPLOY_DIR


CMD ["--deploymentDir", "/opt/payara/deployments", "--contextroot", ""]
