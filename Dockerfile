FROM openjdk:11-jre-slim
WORKDIR /app
COPY . .
RUN javac HelloWorld.java
CMD ["java","HelloWorld"]

