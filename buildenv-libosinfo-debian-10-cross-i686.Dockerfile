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
    dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-i686-linux-gnu \
            libarchive-dev:i386 \
            libc6-dev:i386 \
            libgirepository1.0-dev:i386 \
            libglib2.0-dev:i386 \
            libjson-glib-dev:i386 \
            libsoup2.4-dev:i386 \
            libxml2-dev:i386 \
            libxslt1-dev:i386 && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "i686-linux-gnu"
ENV CONFIGURE_OPTS "--host=i686-linux-gnu \
                    --target=i686-linux-gnu"
ENV PKG_CONFIG_LIBDIR "/usr/lib/i386-linux-gnu/pkgconfig"
