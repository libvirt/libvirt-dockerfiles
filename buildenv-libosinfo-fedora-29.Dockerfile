FROM fedora:29

RUN dnf update -y && \
    dnf install -y \
        autoconf \
        automake \
        bash \
        bash-completion \
        ca-certificates \
        ccache \
        check-devel \
        chrony \
        cppi \
        gcc \
        gdb \
        gettext \
        gettext-devel \
        git \
        glib2-devel \
        glibc-devel \
        gobject-introspection-devel \
        gtk-doc \
        hwdata \
        intltool \
        json-glib-devel \
        libarchive-devel \
        libsoup-devel \
        libtool \
        libxml2 \
        libxml2-devel \
        libxslt-devel \
        lsof \
        make \
        net-tools \
        patch \
        perl \
        pkgconfig \
        python3 \
        python3-lxml \
        python3-pytest \
        python3-requests \
        rpm-build \
        screen \
        strace \
        sudo \
        vala \
        vim && \
    dnf autoremove -y && \
    dnf clean all -y
