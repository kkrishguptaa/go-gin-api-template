FROM --platform=linux/amd64 golang:1.23.6-alpine@sha256:2c49857f2295e89b23b28386e57e018a86620a8fede5003900f2d138ba9c4037

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
