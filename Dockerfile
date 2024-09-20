# Use a imagem base do OpenJDK
FROM openjdk:20-jdk-slim

# Define o diretório de trabalho
WORKDIR /app

# Copia o arquivo JAR para o container
COPY build/libs/gateway-1.0.0.jar gateway.jar

# Expõe a porta que a aplicação irá rodar
EXPOSE 8080

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "gateway.jar"]
