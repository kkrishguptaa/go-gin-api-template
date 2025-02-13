FROM --platform=linux/amd64 golang:1.24.0-alpine@sha256:5429efb7de864db15bd99b91b67608d52f97945837c7f6f7d1b779f9bfe46281

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
