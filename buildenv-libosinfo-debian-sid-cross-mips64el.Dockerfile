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
    dpkg --add-architecture mips64el && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-mips64el-linux-gnuabi64 \
            libarchive-dev:mips64el \
            libc6-dev:mips64el \
            libgirepository1.0-dev:mips64el \
            libglib2.0-dev:mips64el \
            libjson-glib-dev:mips64el \
            libsoup2.4-dev:mips64el \
            libxml2-dev:mips64el \
            libxslt1-dev:mips64el && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "mips64el-linux-gnuabi64"
ENV CONFIGURE_OPTS "--host=mips64el-linux-gnuabi64 \
                    --target=mips64el-linux-gnuabi64"
ENV PKG_CONFIG_LIBDIR "/usr/lib/mips64el-linux-gnuabi64/pkgconfig"
