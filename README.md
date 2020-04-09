Docker-based build environments for libvirt
===========================================

These images come with all libvirt build dependencies, including
optional ones, already installed: this makes it possible to run
something like

    $ docker run \
      -v $(pwd):/libvirt \
      -w /libvirt \
      -it \
      buildenv-centos-7

from a git clone and start building libvirt right away.

Image availability is influenced by libvirt's
[platform support policy](https://libvirt.org/platforms.html),
with the obvious caveat that non-Linux operating systems can't
be run on top of a Linux kernel and as such are not included.


Intended use
------------

The images are primarily intended for use on
[Travis CI](https://travis-ci.org/libvirt/libvirt).

The primary CI environment for the libvirt project is hosted on
[CentOS CI](https://ci.centos.org/view/libvirt/); however, since
that environment feeds off the `master` branch of the various
projects, it can only detect issues after the code causing them
has already been merged.

While testing on Travis CI doesn't cover as many platforms or the
interactions between as many components, it can be very useful as
a smoke test of sorts that allows developers to catch mistakes
before posting patches to the mailing list.

As an alternative, images can be used locally without relying on
third-party services; in this scenario, the number of platforms
patches are tested against is only limited by image availability
and hardware resources.


Information about build dependencies
------------------------------------

The list of build dependencies for libvirt (as well as many
other virtualization-related projects) is taken from the
[libvirt-jenkins-ci](https://gitlab.com/libvirt/libvirt-jenkins-ci)
repository, which also contains the tooling used to generate
Dockerfiles.
