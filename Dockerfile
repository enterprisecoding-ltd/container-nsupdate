FROM alpine:latest
LABEL maintainer="Fatih Boy <fatih@entterprisecoding.com>"

RUN addgroup -S nsupdate && adduser -S nsupdate -G nsupdate \
    && apk add --no-cache bind-tools

USER nsupdate

WORKDIR /home/nsupdate

CMD nsupdate