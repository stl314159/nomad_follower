FROM golang:alpine3.18 AS builder
ADD . /build
RUN cd /build && go install -mod=mod

FROM alpine:3.18
COPY --from=builder /go/bin/nomad_follower .
CMD ["./nomad_follower"]
