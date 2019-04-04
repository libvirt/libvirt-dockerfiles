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
    dpkg --add-architecture mips64el && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-mips64el-linux-gnuabi64 \
            glusterfs-common:mips64el \
            libacl1-dev:mips64el \
            libapparmor-dev:mips64el \
            libattr1-dev:mips64el \
            libaudit-dev:mips64el \
            libavahi-client-dev:mips64el \
            libblkid-dev:mips64el \
            libc6-dev:mips64el \
            libcap-ng-dev:mips64el \
            libcurl4-gnutls-dev:mips64el \
            libdbus-1-dev:mips64el \
            libdevmapper-dev:mips64el \
            libfuse-dev:mips64el \
            libgnutls28-dev:mips64el \
            libiscsi-dev:mips64el \
            libnl-3-dev:mips64el \
            libnl-route-3-dev:mips64el \
            libnuma-dev:mips64el \
            libparted-dev:mips64el \
            libpcap0.8-dev:mips64el \
            libpciaccess-dev:mips64el \
            librbd-dev:mips64el \
            libreadline-dev:mips64el \
            libsanlock-dev:mips64el \
            libsasl2-dev:mips64el \
            libselinux1-dev:mips64el \
            libssh-gcrypt-dev:mips64el \
            libssh2-1-dev:mips64el \
            libtirpc-dev:mips64el \
            libudev-dev:mips64el \
            libxml2-dev:mips64el \
            libyajl-dev:mips64el \
            xfslibs-dev:mips64el && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "mips64el-linux-gnuabi64"
ENV CONFIGURE_OPTS "--host=mips64el-linux-gnuabi64 \
                    --target=mips64el-linux-gnuabi64"
ENV PKG_CONFIG_LIBDIR "/usr/lib/mips64el-linux-gnuabi64/pkgconfig"
