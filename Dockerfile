FROM golang:1.19.4-alpine3.17 as builder

WORKDIR /app

COPY . /app/

RUN go build .

FROM scratch

COPY --from=builder /app/hello-world-go /app/hello-world-go

ENTRYPOINT [ "/app/hello-world-go" ]
