FROM --platform=linux/amd64 golang:1.22.3-alpine@sha256:f1fe698725f6ed14eb944dc587591f134632ed47fc0732ec27c7642adbe90618

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
