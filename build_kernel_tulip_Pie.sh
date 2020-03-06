#!/bin/sh
export KERNELDIR=`readlink -f .`
if [ -f ~/WORKING_DIRECTORY/AGNi_stamp.sh ];
	then
	. ~/WORKING_DIRECTORY/AGNi_stamp.sh
fi
if [ -f ~/WORKING_DIRECTORY/gcc-8.x-uber_aarch64.sh ];
	then
	. ~/WORKING_DIRECTORY/gcc-8.x-uber_aarch64.sh
fi

export ARCH=arm64
export SUBARCH=arm64
mkdir -p /mnt/ANDROID/COMPILED_OUT

echo ""
echo " Cross-compiling AGNi Android Pie kernel tulip..."
echo ""

cd $KERNELDIR/

if [ ! -f /mnt/ANDROID/COMPILED_OUT/.config ];
then
    make defconfig O=/mnt/ANDROID/COMPILED_OUT ARCH=arm64 agni_tulip-pie_defconfig
fi

make -j12 O=/mnt/ANDROID/COMPILED_OUT ARCH=arm64

rm -rf $KERNELDIR/BUILT_tulip-Pie
mkdir -p $KERNELDIR/BUILT_tulip-Pie

#find -name '*.ko' -exec mv -v {} $KERNELDIR/BUILT_tulip-Pie/system/lib/modules \;

mv /mnt/ANDROID/COMPILED_OUT/arch/arm64/boot/Image.*-dtb $KERNELDIR/BUILT_tulip-Pie/

echo ""
echo "AGNi Android Pie has been built for tulip !!!"

