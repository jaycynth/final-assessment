FROM golang:1.23.2-alpine AS builder

WORKDIR /app

COPY . .

RUN go build -o main .

FROM alpine:latest

COPY --from=builder /app/main /app/main

WORKDIR /app

EXPOSE 8080

CMD ["./main"]