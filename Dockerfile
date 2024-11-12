FROM --platform=linux/amd64 golang:1.23.3-alpine@sha256:b4766d6a4baaa4c4cd88a3b9e0373d071e523fd8b42a3256f3f4c4a4fa887609

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
