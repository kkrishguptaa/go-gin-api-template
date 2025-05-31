FROM --platform=linux/amd64 golang:1.24.3-alpine@sha256:b158e66c797e8939c17eab2fdc3783eb9558845217d76c29c2632a2d7d2bd349

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
