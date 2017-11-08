FROM ubuntu:16.04
RUN apt-get install openjdk-8-jdk-headless
ADD target/aaboot.jar /product/aaboot.jar
ENTRYPOINT ["/usr/bin/java","-Dserver.port=8081", "-jar", "/product/aaboot.jar" ]
EXPOSE 8081
