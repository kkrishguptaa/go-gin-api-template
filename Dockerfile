FROM --platform=linux/amd64 golang:1.23.4-alpine@sha256:d37127f39271451047bcd91fc53ee014829603c96b91d02ff65ab3a7d1fb3c5e

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
