# Sfos Adaptation for the Xiaomi 12X(psyche)

FIRMWARE="/data/.stowaways/firmware";
OUTFD=/proc/self/fd/$1;
VENDOR_DEVICE_PROP=`grep ro.product.vendor.device /vendor/build.prop | cut -d "=" -f 2 | awk '{print tolower($0)}'`;

# ui_print <text>
ui_print() { echo -e "ui_print $1\nui_print" > $OUTFD; }

ui_print "Copying firmware images";
mkdir $FIRMWARE;
cp -r firmware/* $FIRMWARE/;
