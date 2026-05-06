
HelloWorld.java

public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello from Java inside Docker!");
    }
}

Dockerfile

FROM openjdk:17-alpine

WORKDIR /app

COPY HelloWorld.java .

RUN javac HelloWorld.java

CMD ["java", "HelloWorld"]


Docker build -t java_ig .
Docker run java_ig
