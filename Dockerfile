FROM --platform=linux/amd64 golang:1.22.1-alpine@sha256:6f179eca0d49ec57ed6d64067d3d2c8c77fb4ca134b687f31cf1666e467cd1a9

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
