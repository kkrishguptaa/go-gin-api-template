FROM --platform=linux/amd64 golang:1.22.5-alpine@sha256:523be8675c81c86325fadcf2ff9be68802a716fa94b1e42679c4782e75b076bf

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
