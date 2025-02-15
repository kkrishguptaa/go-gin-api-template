FROM --platform=linux/amd64 golang:1.24.0-alpine@sha256:3d74d23af285af08b6a2c89a15c437b9bc2854f63948fb8fd703823528820230

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
