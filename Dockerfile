FROM --platform=linux/amd64 golang:1.23.6-alpine@sha256:8e240bc6d804d951a4d4e28fe7ebb424a06f07392bdab36e225753e328ff30fd

WORKDIR /app

COPY . .

RUN go get

RUN go build -tags=jsoniter -o app .

EXPOSE 8080

CMD ["./app"]
