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
    dpkg --add-architecture armhf && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-arm-linux-gnueabihf \
            libarchive-dev:armhf \
            libc6-dev:armhf \
            libgirepository1.0-dev:armhf \
            libglib2.0-dev:armhf \
            libjson-glib-dev:armhf \
            libsoup2.4-dev:armhf \
            libxml2-dev:armhf \
            libxslt1-dev:armhf && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "arm-linux-gnueabihf"
ENV CONFIGURE_OPTS "--host=arm-linux-gnueabihf \
                    --target=arm-linux-gnueabihf"
ENV PKG_CONFIG_LIBDIR "/usr/lib/arm-linux-gnueabihf/pkgconfig"
