FROM --platform=linux/amd64 golang:1.23.1-alpine@sha256:fbc3a217775ee3ec2328077ad4f3681bbc2c4a812d63cc8c857c827f1e8e971f

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
