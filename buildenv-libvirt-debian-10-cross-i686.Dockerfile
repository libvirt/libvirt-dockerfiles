FROM debian:10

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
    dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-i686-linux-gnu \
            libacl1-dev:i386 \
            libapparmor-dev:i386 \
            libattr1-dev:i386 \
            libaudit-dev:i386 \
            libavahi-client-dev:i386 \
            libblkid-dev:i386 \
            libc6-dev:i386 \
            libcap-ng-dev:i386 \
            libcurl4-gnutls-dev:i386 \
            libdbus-1-dev:i386 \
            libdevmapper-dev:i386 \
            libfuse-dev:i386 \
            libglusterfs-dev:i386 \
            libgnutls28-dev:i386 \
            libiscsi-dev:i386 \
            libncurses-dev:i386 \
            libnl-3-dev:i386 \
            libnl-route-3-dev:i386 \
            libnuma-dev:i386 \
            libparted-dev:i386 \
            libpcap0.8-dev:i386 \
            libpciaccess-dev:i386 \
            librbd-dev:i386 \
            libreadline-dev:i386 \
            libsanlock-dev:i386 \
            libsasl2-dev:i386 \
            libselinux1-dev:i386 \
            libssh-gcrypt-dev:i386 \
            libssh2-1-dev:i386 \
            libtirpc-dev:i386 \
            libudev-dev:i386 \
            libxml2-dev:i386 \
            libyajl-dev:i386 \
            xfslibs-dev:i386 && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "i686-linux-gnu"
ENV CONFIGURE_OPTS "--host=i686-linux-gnu \
                    --target=i686-linux-gnu"
ENV PKG_CONFIG_LIBDIR "/usr/lib/i386-linux-gnu/pkgconfig"
