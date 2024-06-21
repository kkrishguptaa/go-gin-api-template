FROM --platform=linux/amd64 golang:1.22.4-alpine@sha256:794964a2e6ad0eefa86be3c20256ee93b29f9d8bfaa82ff07b9f0d64257f5cdd

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
