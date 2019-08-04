FROM alpine:3.10

# install acf + deps
RUN apk update \
    && apk upgrade \
    && apk add alpine-conf acf-core acf-alpine-baselayout acf-openssl

# setup acf
RUN setup-acf

EXPOSE 443
