FROM --platform=linux/amd64 golang:1.22.4-alpine@sha256:9bdd5692d39acc3f8d0ea6f81327f87ac6b473dd29a2b6006df362bff48dd1f8

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
