FROM --platform=linux/amd64 golang:1.22.4-alpine@sha256:d60e66b526e441eefd9796a0ca9eeb726ac857704181638ae09dfb7766b475a3

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
