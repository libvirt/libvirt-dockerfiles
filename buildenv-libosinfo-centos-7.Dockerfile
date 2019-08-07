FROM centos:centos7

RUN yum update -y && \
    yum install -y \
        autoconf \
        automake \
        bash \
        bash-completion \
        ca-certificates \
        check-devel \
        chrony \
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
        rpm-build \
        screen \
        strace \
        sudo \
        vala \
        vim && \
    yum autoremove -y && \
    yum clean all -y
