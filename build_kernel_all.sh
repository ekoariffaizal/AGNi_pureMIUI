#!/bin/sh
export KERNELDIR=`readlink -f .`
cd $KERNELDIR;
COUT="/mnt/ANDROID/COMPILED_OUT"

rm -rf BUILT_*
rm $COUT/.config $COUT/.config.old

#### WHYRED
echo "-----------------------------------------------------------------------"
echo " "
echo "          BATCH MODE: Building AGNi whyred A10 variant..."
./build_kernel_whyred_A10.sh || exit 1
rm $COUT/.config $COUT/.config.old
echo " "
echo "          BATCH MODE: Built AGNi whyred A10 variant!!!"
echo "-----------------------------------------------------------------------"
echo " "

echo "-----------------------------------------------------------------------"
echo " "
echo "          BATCH MODE: Building AGNi whyred A10 (new cam) variant..."
./build_kernel_whyred_A10nc.sh || exit 1
rm $COUT/.config $COUT/.config.old
echo " "
echo "          BATCH MODE: Built AGNi whyred A10 (new cam) variant!!!"
echo "-----------------------------------------------------------------------"
echo " "

echo "          BATCH MODE: Built ALL variants !!!"

