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

echo "-----------------------------------------------------------------------"
echo " "
echo "          BATCH MODE: Building AGNi whyred MIUI variant..."
./build_kernel_whyred_miui.sh || exit 1
rm $COUT/.config $COUT/.config.old
echo " "
echo "          BATCH MODE: Built AGNi whyred MIUI variant!!!"
echo "-----------------------------------------------------------------------"
echo " "

echo "-----------------------------------------------------------------------"
echo " "
echo "          BATCH MODE: Building AGNi whyred Pie variant..."
./build_kernel_whyred_Pie.sh || exit 1
rm $COUT/.config $COUT/.config.old
echo " "
echo "          BATCH MODE: Built AGNi whyred Pie variant!!!"
echo "-----------------------------------------------------------------------"
echo " "

#### TULIP
echo "-----------------------------------------------------------------------"
echo " "
echo "          BATCH MODE: Building AGNi tulip A10 variant..."
./build_kernel_tulip_A10.sh || exit 1
rm $COUT/.config $COUT/.config.old
echo " "
echo "          BATCH MODE: Built AGNi tulip A10 variant!!!"
echo "-----------------------------------------------------------------------"
echo " "

echo "-----------------------------------------------------------------------"
echo " "
echo "          BATCH MODE: Building AGNi tulip MIUI variant..."
./build_kernel_tulip_miui.sh || exit 1
rm $COUT/.config $COUT/.config.old
echo " "
echo "          BATCH MODE: Built AGNi tulip MIUI variant!!!"
echo "-----------------------------------------------------------------------"
echo " "

echo "-----------------------------------------------------------------------"
echo " "
echo "          BATCH MODE: Building AGNi tulip Pie variant..."
./build_kernel_tulip_Pie.sh || exit 1
rm $COUT/.config $COUT/.config.old
echo " "
echo "          BATCH MODE: Built AGNi tulip Pie variant!!!"
echo "-----------------------------------------------------------------------"
echo " "

echo "          BATCH MODE: Built ALL variants !!!"

