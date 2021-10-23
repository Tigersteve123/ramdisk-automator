#!/bin/bash

if [ ! -d "/tmp/ramdisk" ]
then
	mkdir /tmp/ramdisk
fi

echo "Size (MB): "
read SIZE
SIZE=$((SIZE*1000000))

mount -t tmpfs -o size=$SIZE ramdisk /tmp/ramdisk
