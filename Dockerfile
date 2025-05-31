FROM --platform=linux/amd64 golang:1.24.3-alpine@sha256:2853d623ec1c92b54a34e783ce77ce354eb58e56979fe35c117bdaa45de12807

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
