FROM --platform=linux/amd64 golang:1.22.4-alpine@sha256:f46eb222fb7fcd330618499eddef228fdc1be9b7eb2490d37139797e7e33ca38

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
