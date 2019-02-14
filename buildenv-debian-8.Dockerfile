FROM debian:8

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            augeas-tools \
            autoconf \
            automake \
            autopoint \
            bash \
            bash-completion \
            ccache \
            chrony \
            dnsmasq-base \
            dwarves \
            ebtables \
            gcc \
            gettext \
            git \
            glusterfs-common \
            iproute2 \
            kmod \
            libacl1-dev \
            libapparmor-dev \
            libattr1-dev \
            libaudit-dev \
            libavahi-client-dev \
            libblkid-dev \
            libc-dev-bin \
            libc6-dev \
            libcap-ng-dev \
            libcurl4-gnutls-dev \
            libdbus-1-dev \
            libdevmapper-dev \
            libfuse-dev \
            libgnutls28-dev \
            libiscsi-dev \
            libnetcf-dev \
            libnl-3-dev \
            libnl-route-3-dev \
            libnuma-dev \
            libparted-dev \
            libpcap0.8-dev \
            libpciaccess-dev \
            librbd-dev \
            libreadline-dev \
            libsanlock-dev \
            libsasl2-dev \
            libselinux1-dev \
            libssh-gcrypt-dev \
            libssh2-1-dev \
            libtirpc-dev \
            libtool \
            libtool-bin \
            libudev-dev \
            libxen-dev \
            libxml2-dev \
            libxml2-utils \
            libyajl-dev \
            lvm2 \
            make \
            nfs-common \
            open-iscsi \
            parted \
            patch \
            perl \
            pkgconf \
            policykit-1 \
            qemu-utils \
            radvd \
            screen \
            scrub \
            sheepdog \
            sudo \
            systemtap-sdt-dev \
            vim \
            xfslibs-dev \
            xsltproc \
            zfs-fuse && \
    apt-get autoremove -y && \
    apt-get autoclean -y
