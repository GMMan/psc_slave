#link the usb drive dirs into the /gaadata


echo lolhack test

echo '---lolhack for psc slave ---' > /dev/ttyS0
mount -o rw,remount /

echo 'copying start_gadget.sh to /usr/bin' > /dev/ttyS0
cp /media/lolhack/start_gadget.sh /usr/bin

echo 'copy /usr/bin/start_pman' > /dev/ttyS0
cp /media/lolhack/start_pman /usr/bin

echo 'copy /etc/passwd' > /dev/ttyS0
cp /media/lolhack/replace/passwd /etc/passwd

echo 'copy new busybox /data' > /dev/ttyS0
cp /media/lolhack/replace/busybox /data


mount -o ro,remount /
echo 'lolhack for psc-slave complete.please power cycle.' > /dev/ttyS0

# sleep forever so the usb is never unmounted
while :; do sleep 10; done

















