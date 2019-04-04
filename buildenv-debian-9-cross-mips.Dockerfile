FROM debian:9

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
            sheepdog \
            strace \
            sudo \
            vim \
            xsltproc \
            zfs-fuse && \
    apt-get autoremove -y && \
    apt-get autoclean -y

RUN export DEBIAN_FRONTEND=noninteractive && \
    dpkg --add-architecture mips && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-mips-linux-gnu \
            glusterfs-common:mips \
            libacl1-dev:mips \
            libapparmor-dev:mips \
            libattr1-dev:mips \
            libaudit-dev:mips \
            libavahi-client-dev:mips \
            libblkid-dev:mips \
            libc6-dev:mips \
            libcap-ng-dev:mips \
            libcurl4-gnutls-dev:mips \
            libdbus-1-dev:mips \
            libdevmapper-dev:mips \
            libfuse-dev:mips \
            libgnutls28-dev:mips \
            libiscsi-dev:mips \
            libnl-3-dev:mips \
            libnl-route-3-dev:mips \
            libnuma-dev:mips \
            libparted-dev:mips \
            libpcap0.8-dev:mips \
            libpciaccess-dev:mips \
            librbd-dev:mips \
            libreadline-dev:mips \
            libsanlock-dev:mips \
            libsasl2-dev:mips \
            libselinux1-dev:mips \
            libssh-gcrypt-dev:mips \
            libssh2-1-dev:mips \
            libtirpc-dev:mips \
            libudev-dev:mips \
            libxml2-dev:mips \
            libyajl-dev:mips \
            xfslibs-dev:mips && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "mips-linux-gnu"
ENV CONFIGURE_OPTS "--host=mips-linux-gnu \
                    --target=mips-linux-gnu"
ENV PKG_CONFIG_LIBDIR "/usr/lib/mips-linux-gnu/pkgconfig"
