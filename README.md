# Simple Reverse Proxy

A simple reverse proxy based on NGINX.

## Usage

Configure the target(s) of the proxy via the `TARGET_URIS` environment variables.
Multiple targets can be given by seperating them with a semicolon.

## Example

```
docker run -p 8080:80 -e "TARGET_URIS=google.nl;google.com" gmaas/simple-reverse-proxy
```
