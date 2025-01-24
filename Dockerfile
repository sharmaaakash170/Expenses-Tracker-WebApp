FROM maven:3.8.1-openjdk-17-slim as builder

WORKDIR /app

COPY . .

RUN mvn clean install -DskipTests=true

FROM maven:3.8.1-openjdk-17-slim

WORKDIR /app

COPY --from=builder /app/target/ExpensesTracker-0.0.1-SNAPSHOT.jar /app/expapp.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app/expapp.jar"]
