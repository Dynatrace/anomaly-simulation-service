# syntax=docker/dockerfile:1
FROM golang:1.22

WORKDIR /app

COPY go.mod *.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o /anomaly-simulation-service

EXPOSE 8080

CMD ["/anomaly-simulation-service"]