#link the usb drive dirs into the /gaadata


echo '---lolhack for psc slave<restore> ---' > /dev/ttyS0
mount -o rw,remount /

rm /media/lolhack/start_gadget.sh /usr/bin

cp /media/lolhack/start_pman /usr/bin

# this is useful for hardware serial login
# cp /media/lolhack/passwd /etc/passwd

mount -o ro,remount /
echo 'lolhack for psc-slave restore complete.please power cycle.' > /dev/ttyS0

# sleep forever so the usb is never unmounted
while :; do sleep 10; done

















