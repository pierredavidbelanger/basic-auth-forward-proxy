# basic-auth-forward-proxy

A very simple basic auth forward proxy based on [tinyproxy](https://tinyproxy.github.io/).

## Usage

```
$ docker run --rm -it -p 8888:8888 \
    -e BASIC_AUTH_USER=my_user \
    -e BASIC_AUTH_PASS=my_pass \
    pierredavidbelanger/basic-auth-forward-proxy
```

```
$ curl -x 'http://my_user:my_pass@localhost:8888' http://google.com
```
