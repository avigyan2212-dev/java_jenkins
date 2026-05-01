FROM openjdk:27-ea-jdk-slim
WORKDIR /app
COPY HelloWorld.class /app
CMD ["java","HelloWorld"]

