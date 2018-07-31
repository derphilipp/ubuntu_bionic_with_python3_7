FROM derphilipp/ubuntu_bionic_with_utf8

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive  apt-get -y install --no-install-recommends \
        python3.7 \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/apt/archives && \
    rm -f /usr/bin/python && \
    rm -f /usr/bin/python3 && \
    ln -s /usr/bin/python3.7 /usr/bin/python && \
    ln -s /usr/bin/python3.7 /usr/bin/python3
