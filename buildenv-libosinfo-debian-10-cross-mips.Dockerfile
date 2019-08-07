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
    dpkg --add-architecture mips && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-mips-linux-gnu \
            libarchive-dev:mips \
            libc6-dev:mips \
            libgirepository1.0-dev:mips \
            libglib2.0-dev:mips \
            libjson-glib-dev:mips \
            libsoup2.4-dev:mips \
            libxml2-dev:mips \
            libxslt1-dev:mips && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "mips-linux-gnu"
ENV CONFIGURE_OPTS "--host=mips-linux-gnu \
                    --target=mips-linux-gnu"
ENV PKG_CONFIG_LIBDIR "/usr/lib/mips-linux-gnu/pkgconfig"
