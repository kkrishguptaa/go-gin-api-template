FROM --platform=linux/amd64 golang:1.24.0-alpine@sha256:beded3aa2b820de62cd378834292360140504b2a12c9544d4f2b7523237a8b8d

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
