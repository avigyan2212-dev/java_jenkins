FROM eclipse-temurin:11.0.31_11-jre-noble
WORKDIR /app
COPY HelloWorld.java /app
CMD ["java","HelloWorld"]

