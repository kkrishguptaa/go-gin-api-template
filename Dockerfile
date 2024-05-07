FROM --platform=linux/amd64 golang:1.22.3-alpine@sha256:2a882244fb51835ebbd8313bffee83775b0c076aaf56b497b43d8a4c72db65e1

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
