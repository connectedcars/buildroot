#!/bin/sh

echo "Mounting partitions"
# Partitions: 1 = boot, 2 = First rootfs, 3 = Second Rootfs
# Partition 4 is a container for logical partitions(extended partition table)
# Meaning the next partitons are 5,6(App1/2) 7(Data/Perma Storage) 8 (Tmp)

# Checks for virtual setup, or on SD card. Mounts boot, application and temp partition
if [ -e /dev/vda4 ]; then
    echo "Mounting vda partitions"
    mount /dev/vda1 /boot
    mount /dev/vda5 /app1
    mount /dev/vda6 /app2
    mount /dev/vda7 /data
    mount /dev/vda8 /tmp
fi

if [ -e /dev/mmcblk0p4 ]; then
    echo "Mounting mmcblk0p partitions"
    mount /dev/mmcblk0p1 /boot
    mount /dev/mmcblk0p5 /app1
    mount /dev/mmcblk0p6 /app2
    mount /dev/mmcblk0p7 /data
    mount /dev/mmcblk0p8 /tmp
fi

#NPM fix (Doesn't work on read-only...)
# if [ ! -f /root/.npmfix ]; then
#     echo "Forcing NPM to use http"
#     npm config set registry http://registry.npmjs.org
#     touch /root/.npmfix
# fi