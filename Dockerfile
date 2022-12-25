FROM golang:1.19.4-alpine3.17@sha256:a9b24b67dc83b3383d22a14941c2b2b2ca6a103d805cac6820fd1355943beaf1 as builder

WORKDIR /app

COPY . /app/

RUN go build .

FROM scratch

COPY --from=builder /app/hello-world-go /app/hello-world-go

ENTRYPOINT [ "/app/hello-world-go" ]
