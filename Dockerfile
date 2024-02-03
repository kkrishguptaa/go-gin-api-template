FROM --platform=linux/amd64 golang:1.21.6-alpine@sha256:a6a7f1fcf12f5efa9e04b1e75020931a616cd707f14f62ab5262bfbe109aa84a

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
