FROM --platform=linux/amd64 golang:1.23.3-alpine@sha256:87684d2b053f4c6fdf6c47512daef2e28a93daa123a324c85d6146c3d11c40aa

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
