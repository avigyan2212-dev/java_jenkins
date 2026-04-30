FROM openjdk:27-ea-jdk-slim
WORKDIR /app
COPY HelloWorld.java /app
CMD ["java","HelloWorld"]

