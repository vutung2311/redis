FROM golang:1.13

ENV GO111MODULE on

COPY . /go/src/github.com/go-redis/redis/

WORKDIR /go/src/github.com/go-redis/redis/

RUN go mod download

CMD make all