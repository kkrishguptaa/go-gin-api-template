FROM --platform=linux/amd64 golang:1.23.1-alpine@sha256:d6e18ebe13069f99c831d1024803779bee93277d586048652de9f8f017a44693

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
