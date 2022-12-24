FROM golang:1.19.4

WORKDIR /app

COPY . /app/

RUN go build .

ENTRYPOINT [ "hello-world-go" ]
