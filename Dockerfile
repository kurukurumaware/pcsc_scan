FROM alpine:3.12 AS Pcsc_scan-build

RUN echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk --update add pcsc-tools@testing

CMD ["/usr/bin/pcsc_scan"]

