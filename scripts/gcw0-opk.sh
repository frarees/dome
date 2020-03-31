#!/bin/sh -e

if [ $# -lt 3 ]; then
	cat << EOM
usage: $0 source_file ... target_opk
       $0 source_file target_opk
EOM
	exit 1
fi

mksquashfs $@ -all-root -no-xattrs -noappend -no-exports

