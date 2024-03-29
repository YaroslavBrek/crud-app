# Build Application Stage
FROM maven:3-jdk-8-alpine AS build
WORKDIR /opt/app
COPY ./ /opt/app
RUN mvn clean install -DskipTests

# Run Application Stage
FROM openjdk:8-jdk-alpine
COPY --from=build /opt/app/target/*.jar ybr-crud-app.jar
CMD ["java","-jar","/ybr-crud-app.jar"]
