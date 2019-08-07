FROM debian:9

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            autoconf \
            automake \
            autopoint \
            bash \
            bash-completion \
            ca-certificates \
            ccache \
            check \
            chrony \
            gcc \
            gdb \
            gettext \
            git \
            gtk-doc-tools \
            hwdata \
            intltool \
            libtool \
            libtool-bin \
            libxml2-utils \
            lsof \
            make \
            net-tools \
            patch \
            perl \
            pkgconf \
            python3 \
            python3-lxml \
            python3-pytest \
            python3-requests \
            screen \
            strace \
            sudo \
            valac \
            vim && \
    apt-get autoremove -y && \
    apt-get autoclean -y

RUN export DEBIAN_FRONTEND=noninteractive && \
    dpkg --add-architecture arm64 && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-aarch64-linux-gnu \
            libarchive-dev:arm64 \
            libc6-dev:arm64 \
            libgirepository1.0-dev:arm64 \
            libglib2.0-dev:arm64 \
            libjson-glib-dev:arm64 \
            libsoup2.4-dev:arm64 \
            libxml2-dev:arm64 \
            libxslt1-dev:arm64 && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "aarch64-linux-gnu"
ENV CONFIGURE_OPTS "--host=aarch64-linux-gnu \
                    --target=aarch64-linux-gnu"
ENV PKG_CONFIG_LIBDIR "/usr/lib/aarch64-linux-gnu/pkgconfig"
