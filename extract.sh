#!/bin/bash
if [ -z $1 ] && [ -z $2 ]; then	
	echo "Usage: extract.sh <ramdisk image> <output>\n"
	echo "The ramdisk will be extracted to the output directory"
	exit 1
fi

if [ ! -f $1 ]; then
	echo "Ramdisk image not found"
	exit 1
fi

echo "extracting the ramdisk."

rm $2 -rf
mkdir $2 -p
cd $2
gunzip -c ../$1 | cpio -idm

echo "Done"
