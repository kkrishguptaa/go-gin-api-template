FROM --platform=linux/amd64 golang:1.22.4-alpine@sha256:6522f0ca555a7b14c46a2c9f50b86604a234cdc72452bf6a268cae6461d9000b

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
