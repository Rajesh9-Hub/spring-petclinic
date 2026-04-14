FROM maven:4.0.0-rc-5-eclipse-temurin-25-alpine AS build
ADD /user
WORKDIR /user
RUN mvn package


FROM eclipse-temurin:25-noble AS runtime
COPY --FROM=build /user/target/*.jar Rajesh.jar
EXPOSE 8080
CMD ["Java","-jar""Rajesh.jar"]



