# docker-nginx-ssl-proxy

Start nginx-ssl-proxy instance:
```
docker run -d -v /var/lib/letsencrypt:/etc/letsencrypt:ro -e SERVER_NAME=example.com -e UPSTREAM_SERVICE_1=10.0.3.100:3000 -e UPSTREAM_SERVICE_2=10.0.3.101:3000 -p 80:80 -p 443:443 r0bj/nginx-ssl-proxy
```
