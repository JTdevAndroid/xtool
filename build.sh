#!/bin/bash
if [ -z $1 ] && [ -z $2 ]; then	
	echo "Usage: build.sh <ramdisk directory> <output ramdisk image>\n"
	echo "Buil the ramdisk image from the given ramdisk directory"
	exit 1
fi

echo "Building the Ramdisk."
cd $1

find . | cpio -o -H newc | gzip > ../$2

echo "Done"
