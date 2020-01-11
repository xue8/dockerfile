FROM centos:7.2.1511

MAINTAINER xue8 <rongyuexue@gmail.com>

# -----------------------------------------------------------------------------
# Base Install
# -----------------------------------------------------------------------------
RUN rpm --rebuilddb \
	&& yum -y install \
		vim \
        tar \
        net-tools \
		xz-5.1.2-12alpha.el7.x86_64 \
		python-setuptools-0.9.8-4.el7 \
		yum-plugin-versionlock-1.1.31-34.el7 \
	&& yum versionlock add \
		vim \
		xz \
        tar \
		python-setuptools \
		yum-plugin-versionlock \
	&& rm -rf /var/cache/yum/* \
	&& yum clean all
