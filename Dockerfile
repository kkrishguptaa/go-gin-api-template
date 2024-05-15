FROM --platform=linux/amd64 golang:1.22.3-alpine@sha256:c24516e46efe26e6ee0f9e63feaab8259893fa5d3b33cd3ff7725be59d97b668

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
