ARG GOLANG_VERSION=1.16
FROM golang:$GOLANG_VERSION-alpine

RUN apk --no-cache add iproute2
WORKDIR /bot
COPY . .

RUN go build

CMD ["./go-discord-irc", "--config", "config.yml"]

