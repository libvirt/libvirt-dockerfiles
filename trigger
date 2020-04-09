#!/bin/sh

QUAYADMIN="../libvirt-ci/guests/quayadmin"

usage() {
    echo "Usage: trigger INFILE OUTFILE" >&2
    exit 1
}

infile="$1"
outfile="$2"

test "$infile" || usage
test "$outfile" || usage

while read zip
do
    repository="${zip%.zip}"
    url="https://gitlab.com/libvirt/libvirt-dockerfiles/-/raw/master/$zip"

    "$QUAYADMIN" create-build libvirt "$repository" "$url"

done <"$infile" | tee "$outfile"
