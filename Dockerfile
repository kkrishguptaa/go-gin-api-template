FROM --platform=linux/amd64 golang:1.23.4-alpine@sha256:29c74ca0344a4da5fbf0003f31812d47b72db3551820d6d3642937d247cba5bf

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
