#!/bin/sh
if [ "$BASIC_AUTH_USER" == "" ]; then
  BASIC_AUTH_USER=admin
fi
if [ "$BASIC_AUTH_PASS" == "" ]; then
  BASIC_AUTH_PASS=$(dd if=/dev/urandom bs=1 count=12 status=none  | sha256sum | head -c 16)
  echo "BASIC_AUTH_PASS: $BASIC_AUTH_PASS"
fi
envsubst < /etc/tinyproxy/tinyproxy.conf.tpl > /etc/tinyproxy/tinyproxy.conf
$*