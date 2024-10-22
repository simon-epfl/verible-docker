FROM alpine:latest

ENV VERIBLE_URL=https://github.com/chipsalliance/verible/releases/download/v0.0-3836-g86ee9bab/verible-v0.0-3836-g86ee9bab-linux-static-x86_64.tar.gz

RUN apk add --no-cache \
    wget \
    tar \
    bash

RUN mkdir -p /opt/verible && \
    wget -O /tmp/verible.tar.gz $VERIBLE_URL && \
    tar -xzf /tmp/verible.tar.gz -C /opt/verible --strip-components=1 && \
    rm /tmp/verible.tar.gz

ENV PATH="/opt/verible/bin:$PATH"

COPY verible-wrapper.sh /tmp
RUN chmod +x /tmp/verible-wrapper.sh

CMD [ "bash", "/tmp/verible-wrapper.sh" ]
