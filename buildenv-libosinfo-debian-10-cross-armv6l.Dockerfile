FROM debian:10

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
    dpkg --add-architecture armel && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-arm-linux-gnueabi \
            libarchive-dev:armel \
            libc6-dev:armel \
            libgirepository1.0-dev:armel \
            libglib2.0-dev:armel \
            libjson-glib-dev:armel \
            libsoup2.4-dev:armel \
            libxml2-dev:armel \
            libxslt1-dev:armel && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "arm-linux-gnueabi"
ENV CONFIGURE_OPTS "--host=arm-linux-gnueabi \
                    --target=arm-linux-gnueabi"
ENV PKG_CONFIG_LIBDIR "/usr/lib/arm-linux-gnueabi/pkgconfig"
