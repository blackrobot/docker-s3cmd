# damon/s3cmd

FROM debian:jessie

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y s3cmd && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/config/"]
ENTRYPOINT ["/usr/bin/s3cmd", "--config=/config/.s3cfg"]

CMD ["--help"]
