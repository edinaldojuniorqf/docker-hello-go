FROM golang:alpine as builder

COPY hello.go .

RUN go build hello.go

FROM scratch

COPY --from=builder /go/hello .
CMD ["/hello"]
