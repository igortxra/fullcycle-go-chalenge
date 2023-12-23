FROM golang:alpine as builder

COPY ./main.go ./

RUN go build main.go

FROM scratch

COPY --from=builder /go/main main

ENTRYPOINT ["./main"]
