FROM golang:1.15-alpine
WORKDIR /app
COPY /karsajobs /app/
ENV APP_PORT=8080
RUN go mod download && go mod verify
RUN go build -v -o /usr/local/bin/ ./...
EXPOSE 8080
CMD ["web"]
