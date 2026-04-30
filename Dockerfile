FROM openjdk:11-jdk-slim
WORKDIR /app
COPY HelloWorld.class .
RUN javac HelloWorld.java
CMD ["java","HelloWorld"]

