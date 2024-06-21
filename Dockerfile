FROM --platform=linux/amd64 golang:1.22.4-alpine@sha256:8274bcfe89f5989777cb759302a7ced08c8a712c81982ca3ecc9fce0626592f1

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
