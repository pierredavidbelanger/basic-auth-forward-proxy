FROM alpine:3.10
ENTRYPOINT ["/entrypoint.sh"]
CMD ["tinyproxy", "-d"]
ENV BASIC_AUTH_USER="admin" BASIC_AUTH_PASS=""
RUN apk add --no-cache tinyproxy gettext
COPY entrypoint.sh /entrypoint.sh
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf.tpl