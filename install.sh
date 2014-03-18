git clone https://github.com/liwei/rpi-rtl8188eu.git
git clone --depth 1 git://github.com/raspberrypi/linux.git rpi-linux
git clone --depth 1 git://github.com/raspberrypi/firmware.git rpi-firmware
cd rpi-linux
make mrproper
zcat /proc/config.gz > .config
make modules_prepare
cp ../rpi-firmware/extra/Module.symvers .
cd ../rpi-rtl8188eu
CONFIG_RTL8188EU=m make -C ../rpi-linux M=`pwd`
sudo rmmod 8188eu
sudo install -p -m 644 8188eu.ko /lib/modules/`uname -r`/kernel/drivers/net/wireless
sudo depmod -a
sudo modprobe 8188eu
