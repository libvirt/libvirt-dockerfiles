FROM fedora:rawhide

RUN dnf update -y --nogpgcheck fedora-gpg-keys && \
    dnf update -y && \
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
        mingw32-glib2 \
        mingw32-json-glib \
        mingw32-libarchive \
        mingw32-libsoup \
        mingw32-libxml2 \
        mingw32-libxslt \
        mingw64-glib2 \
        mingw64-json-glib \
        mingw64-libarchive \
        mingw64-libsoup \
        mingw64-libxml2 \
        mingw64-libxslt \
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
        vim \
        wget && \
    dnf autoremove -y && \
    dnf clean all -y
