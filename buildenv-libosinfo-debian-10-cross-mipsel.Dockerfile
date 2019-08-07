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
    dpkg --add-architecture mipsel && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-mipsel-linux-gnu \
            libarchive-dev:mipsel \
            libc6-dev:mipsel \
            libgirepository1.0-dev:mipsel \
            libglib2.0-dev:mipsel \
            libjson-glib-dev:mipsel \
            libsoup2.4-dev:mipsel \
            libxml2-dev:mipsel \
            libxslt1-dev:mipsel && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "mipsel-linux-gnu"
ENV CONFIGURE_OPTS "--host=mipsel-linux-gnu \
                    --target=mipsel-linux-gnu"
ENV PKG_CONFIG_LIBDIR "/usr/lib/mipsel-linux-gnu/pkgconfig"
