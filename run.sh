#!/bin/bash

set -ex

qemu-system-x86_64 \
	-m 100M \
	-nographic \
	-kernel bzImage \
	-hda drive.img \
	-append "console=ttyS0 root=8:0 rw init=/init"