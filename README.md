# Simple Reverse Proxy

A simple reverse proxy based on NGINX.

## Usage

Configure the target(s) of the proxy via the `TARGET_URIS` environment variables.
Multiple targets can be given by seperating them with a semicolon.

Set the environment variable `PROXY_TO_HTTPS` to proxy to https rather than http.

## Example

```
docker run -p 8080:80 -e "TARGET_URIS=google.nl;google.com" -e "PROXY_TO_HTTPS" gmaas/simple-reverse-proxy
```
