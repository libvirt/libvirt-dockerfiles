FROM debian:sid

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
    dpkg --add-architecture s390x && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-s390x-linux-gnu \
            libarchive-dev:s390x \
            libc6-dev:s390x \
            libgirepository1.0-dev:s390x \
            libglib2.0-dev:s390x \
            libjson-glib-dev:s390x \
            libsoup2.4-dev:s390x \
            libxml2-dev:s390x \
            libxslt1-dev:s390x && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "s390x-linux-gnu"
ENV CONFIGURE_OPTS "--host=s390x-linux-gnu \
                    --target=s390x-linux-gnu"
ENV PKG_CONFIG_LIBDIR "/usr/lib/s390x-linux-gnu/pkgconfig"
