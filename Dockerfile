FROM	eclipse-temurin:11.0.31_11-jre-noble
WORKDIR	/app
COPY	HelloWorld.class .
CMD	["java","HelloWorld"]

