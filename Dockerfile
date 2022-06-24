FROM alpine:3.16

RUN apk add --no-cache haproxy

ADD redirect-to-location.sh /redirect-to-location.sh

CMD ["/redirect-to-location.sh"]
