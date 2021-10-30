FROM amd64/debian:bullseye-slim
LABEL maintainer="rongyuexue@gmail.com"

RUN set -eux                \
    && sed -i 's@deb.debian.org/debian@ftp.cn.debian.org/debian@g' /etc/apt/sources.list  \
    && apt-get update          \
	&& apt-get install -y      \
	curl	                \
    wget	                \
    vim		                \
    bash	                \
    tar	                    \
    file	                \
    iptables	            \
    jq	                    \
    ngrep	                \
    strace	                \
    tcpdump	                \
    telnet	                \
    lrzsz	                \
    lsof	                \
    iputils-ping	        \
    net-tools	            \
    procps	                \
    unzip                   \
    zip                     \
    && apt-get clean        