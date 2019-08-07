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
    dpkg --add-architecture ppc64el && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-powerpc64le-linux-gnu \
            libarchive-dev:ppc64el \
            libc6-dev:ppc64el \
            libgirepository1.0-dev:ppc64el \
            libglib2.0-dev:ppc64el \
            libjson-glib-dev:ppc64el \
            libsoup2.4-dev:ppc64el \
            libxml2-dev:ppc64el \
            libxslt1-dev:ppc64el && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "powerpc64le-linux-gnu"
ENV CONFIGURE_OPTS "--host=powerpc64le-linux-gnu \
                    --target=powerpc64le-linux-gnu"
ENV PKG_CONFIG_LIBDIR "/usr/lib/powerpc64le-linux-gnu/pkgconfig"
