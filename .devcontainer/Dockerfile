FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       bash curl unzip ca-certificates uuid-runtime tmux jq \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /etc/xray

COPY config.json /etc/xray/config.json
COPY setup.sh /tmp/setup.sh

RUN chmod +x /tmp/setup.sh && /tmp/setup.sh && rm /tmp/setup.sh

COPY show-link.sh /usr/local/bin/show-link.sh
COPY start.sh /usr/local/bin/start.sh

RUN chmod +x /usr/local/bin/show-link.sh \
    && chmod +x /usr/local/bin/start.sh

EXPOSE 443

CMD ["/usr/local/bin/xray", "run", "-c", "/etc/xray/config.json"]
