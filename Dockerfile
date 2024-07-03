FROM --platform=linux/amd64 golang:1.22.5-alpine@sha256:ad76c77dc2401f98637c1012adcf16d040de054055936f68a448d01c9fd6efba

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
