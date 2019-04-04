FROM debian:sid

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
            ca-certificates \
            ccache \
            chrony \
            dnsmasq-base \
            dwarves \
            ebtables \
            gcc \
            gdb \
            gettext \
            git \
            iproute2 \
            kmod \
            libc-dev-bin \
            libtool \
            libtool-bin \
            libxml2-utils \
            lsof \
            lvm2 \
            make \
            net-tools \
            nfs-common \
            numad \
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
            strace \
            sudo \
            vim \
            xsltproc \
            zfs-fuse && \
    apt-get autoremove -y && \
    apt-get autoclean -y

RUN export DEBIAN_FRONTEND=noninteractive && \
    dpkg --add-architecture arm64 && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-aarch64-linux-gnu \
            libacl1-dev:arm64 \
            libapparmor-dev:arm64 \
            libattr1-dev:arm64 \
            libaudit-dev:arm64 \
            libavahi-client-dev:arm64 \
            libblkid-dev:arm64 \
            libc6-dev:arm64 \
            libcap-ng-dev:arm64 \
            libcurl4-gnutls-dev:arm64 \
            libdbus-1-dev:arm64 \
            libdevmapper-dev:arm64 \
            libfuse-dev:arm64 \
            libglusterfs-dev:arm64 \
            libgnutls28-dev:arm64 \
            libiscsi-dev:arm64 \
            libnl-3-dev:arm64 \
            libnl-route-3-dev:arm64 \
            libnuma-dev:arm64 \
            libparted-dev:arm64 \
            libpcap0.8-dev:arm64 \
            libpciaccess-dev:arm64 \
            librbd-dev:arm64 \
            libreadline-dev:arm64 \
            libsanlock-dev:arm64 \
            libsasl2-dev:arm64 \
            libselinux1-dev:arm64 \
            libssh-gcrypt-dev:arm64 \
            libssh2-1-dev:arm64 \
            libtirpc-dev:arm64 \
            libudev-dev:arm64 \
            libxen-dev:arm64 \
            libxml2-dev:arm64 \
            libyajl-dev:arm64 \
            xfslibs-dev:arm64 && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "aarch64-linux-gnu"
ENV CONFIGURE_OPTS "--host=aarch64-linux-gnu \
                    --target=aarch64-linux-gnu"
ENV PKG_CONFIG_LIBDIR "/usr/lib/aarch64-linux-gnu/pkgconfig"
