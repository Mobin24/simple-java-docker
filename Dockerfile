FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . .

RUN javac -d out src/Main.java

CMD ["java", "-cp", "out", "Main"]

#CMD can overwrite so we can use ENTRYPOINT	
