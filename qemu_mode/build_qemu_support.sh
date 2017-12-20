#!/bin/sh
#
# build triforce patched qemu for AFL
#

cd qemu

CFLAGS="-O3" ./configure --disable-werror \
  --target-list="mips-softmmu"

make
cp -f "mips-softmmu/qemu-system-mips" "../../afl-qemu-system-trace"
