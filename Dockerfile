FROM --platform=linux/amd64 golang:1.23.4-alpine@sha256:9bfa54e3a85920df66ecf1c4979dfdf88baa80ca9752adda442713863087ef18

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
