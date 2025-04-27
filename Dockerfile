# docker build -f Dockerfile -t toolkit .
# docker run --rm -it --name toolkit toolkit:latest
# kubectl -n default run toolkit --rm -it --image=toolkit:latest
ARG ALPINE_TAG=latest
FROM alpine:${ALPINE_TAG}
LABEL maintainer="Roman Lagutin <r@lag.net.ru>"
RUN set -ex && apk add --no-cache \
    bash \
    bash-completion \
    bind-tools \
    tcpdump \
    nmap \
    curl \
    wget \
    httpie \
    whois \
    mtr \
    iperf3 \
    socat \
    netcat-openbsd \
    tmux \
    iproute2 \
    iputils \
    net-tools \
    ethtool \
    iftop \
    mc \
    vim \
    nano \
    less \
    tree \
    file \
    zip \
    unzip \
    jq \
    git \
    lsof \
    procps \
    htop \
    gotop \
    tzdata \
    python3 \
    py3-pip \
    ipython \
    ansible
ENV PS1='\e[92m\u\e[0m@\e[94m\h\e[0m:\e[35m\w\e[0m# ' \
    TERM=xterm-256color \
    TZ=Europe/Moscow
WORKDIR /root
CMD ["/bin/bash"]
