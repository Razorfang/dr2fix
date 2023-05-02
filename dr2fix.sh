#!/bin/sh

LIBSDIR="~/.steam/steam/steamapps/common/Danganronpa 2 Goodbye Despair/lib"

# Go to the libs folder of Danganronpa 2
cd "${LIBSDIR}"

# Keep two specific libraries as per the steam thread, but delete the rest
cp libfmod.so.7 /tmp/
cp libsteam_api.so /tmp/

rm lib*

cp /tmp/libfmod.so.7 .
cp /tmp/libsteam_api.so .
