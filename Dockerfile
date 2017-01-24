FROM nginx:1.11.9

RUN apt-get update && apt-get install -y --no-install-recommends wget && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN wget -qO /usr/bin/confd --no-check-certificate https://github.com/kelseyhightower/confd/releases/download/v0.12.0-alpha3/confd-0.12.0-alpha3-linux-amd64 && chmod +x /usr/bin/confd
COPY nginx.toml /etc/confd/conf.d/nginx.toml
COPY default.conf.tmpl /etc/confd/templates/default.conf.tmpl

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

CMD ["/docker-entrypoint.sh"]
