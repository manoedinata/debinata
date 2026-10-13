FROM debian:trixie

LABEL maintainer="nazDridoy <nazdridoy399@gmail.com>"
LABEL description="Debian-based networking toolbox for GNS3"
LABEL version="1.4.0-deb13"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    iproute2 \
    iputils-ping \
    iputils-arping \
    dnsutils \
    tcpdump \
    nmap \
    curl \
    wget \
    openssh-client \
    net-tools \
    iperf3 \
    mtr-tiny \
    socat \
    netcat-openbsd \
    traceroute \
    bridge-utils \
    vlan \
    ethtool \
    inetutils-telnet \
    iptables \
    nftables \
    lftp \
    tftp-hpa \
    rsync \
    bash \
    bash-completion \
    nano \
    less \
    tmux \
    screen \
    htop \
    procps \
    util-linux \
    coreutils \
    grep \
    sed \
    gawk \
    findutils \
    iperf \
    hping3 \
    lynx \
    ca-certificates \
    openssl \
    tzdata \
    jq \
    tree \
    file \
    tar \
    gzip \
    dumb-init && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN echo 'PS1="\[\e[1;31m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]# "' >> /root/.bashrc && \
    echo 'alias ll="ls -lah"' >> /root/.bashrc && \
    echo 'alias la="ls -A"' >> /root/.bashrc && \
    echo 'alias l="ls -CF"' >> /root/.bashrc

COPY motd.sh /etc/profile.d/motd.sh
RUN chmod +x /etc/profile.d/motd.sh

COPY debinet-tools.sh /usr/local/bin/debinet-tools
RUN chmod +x /usr/local/bin/debinet-tools

WORKDIR /root

COPY debinet-init.sh /etc/debinet-init.sh
RUN chmod +x /etc/debinet-init.sh

VOLUME ["/root"]

ENTRYPOINT ["/etc/debinet-init.sh"]
