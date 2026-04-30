FROM openjdk:11-jre-slim
WORKDIR /app
COPY HelloWorld.class .
RUN javac HelloWorld.java
CMD ["java","HelloWorld"]

