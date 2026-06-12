FROM golang:1.22 AS builder

WORKDIR /app

# Copia os arquivos do projeto para o diretório de trabalho no container
# A ordem de cópia é importante para aproveitar o cache do Docker e evitar a reinstalação de dependências desnecessariamente (Arquivos menos editados por primeiro para aproveitar o cache)
# Primeiro, copiamos os arquivos de dependências para que o Docker possa cachear a etapa de instalação de dependências
# Depois, copiamos o restante dos arquivos do projeto (Arquivos mais editados por último para evitar cache desnecessário)
COPY ./controllers/ /app/controllers/
COPY ./database/ /app/database/
COPY ./models/ /app/models/
COPY ./routes/ /app/routes/
COPY ./main.go /app/main.go
COPY ./go.mod /app/go.mod
COPY ./go.sum /app/go.sum

RUN go build main.go

FROM golang:1.22 AS production

EXPOSE 8080

WORKDIR /app

#Adiciona variáveis com valores padrão de ambiente para configuração do banco de dados
ENV PORT 8080
ENV DB_HOST postgres
ENV DB_USER root
ENV DB_PASSWORD root
ENV DB_NAME root
ENV DB_PORT 5432

COPY ./assets/ /app/assets/
COPY ./templates/ /app/templates/
COPY --from=builder /app/main /app/main

CMD ["./main"]