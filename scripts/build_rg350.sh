#!/bin/sh -e

export PATH=$PATH:/opt/gcw0-toolchain/usr/mipsel-gcw0-linux-uclibc/sysroot/usr/bin:/opt/gcw0-toolchain/usr/bin

DIR=$(dirname $0)
cd ${DIR}/.. ; make CC=mipsel-gcw0-linux-uclibc-cc RG350=1 ; cd - ; sh ${DIR}/gcw0-opk.sh ${DIR}/../dome ${DIR}/../dists/rg350/* ${DIR}/../dome.opk

