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
            ccache \
            chrony \
            dnsmasq-base \
            dwarves \
            ebtables \
            gcc \
            gettext \
            git \
            iproute2 \
            kmod \
            libc-dev-bin \
            libtool \
            libtool-bin \
            libxml2-utils \
            lvm2 \
            make \
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
            sudo \
            vim \
            xsltproc \
            zfs-fuse && \
    apt-get autoremove -y && \
    apt-get autoclean -y

RUN export DEBIAN_FRONTEND=noninteractive && \
    dpkg --add-architecture armel && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-arm-linux-gnueabi \
            libacl1-dev:armel \
            libapparmor-dev:armel \
            libattr1-dev:armel \
            libaudit-dev:armel \
            libavahi-client-dev:armel \
            libblkid-dev:armel \
            libc6-dev:armel \
            libcap-ng-dev:armel \
            libcurl4-gnutls-dev:armel \
            libdbus-1-dev:armel \
            libdevmapper-dev:armel \
            libfuse-dev:armel \
            libglusterfs-dev:armel \
            libgnutls28-dev:armel \
            libiscsi-dev:armel \
            libnl-3-dev:armel \
            libnl-route-3-dev:armel \
            libparted-dev:armel \
            libpcap0.8-dev:armel \
            libpciaccess-dev:armel \
            librbd-dev:armel \
            libreadline-dev:armel \
            libsanlock-dev:armel \
            libsasl2-dev:armel \
            libselinux1-dev:armel \
            libssh-gcrypt-dev:armel \
            libssh2-1-dev:armel \
            libtirpc-dev:armel \
            libudev-dev:armel \
            libxml2-dev:armel \
            libyajl-dev:armel \
            xfslibs-dev:armel && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "arm-linux-gnueabi"
ENV CONFIGURE_OPTS "--host=arm-linux-gnueabi \
                    --target=arm-linux-gnueabi"
ENV PKG_CONFIG_LIBDIR "/usr/lib/arm-linux-gnueabi/pkgconfig"
