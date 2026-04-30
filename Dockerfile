FROM openjdk:11
WORKDIR /app
COPY . .
RUN javac HelloWorld.java
CMD ["java","HelloWorld"]

