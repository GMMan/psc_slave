
echo '------------start_gadget.sh----------' > /dev/ttyS0

echo 0 > /sys/class/android_usb/android0/enable
echo rndis,acm > /sys/class/android_usb/android0/functions
echo tty > sys/class/android_usb/android0/f_acm/acm_transports
echo 0 > /sys/class/android_usb/android0/bDeviceClass
echo 1 > /sys/class/android_usb/android0/f_rndis/wceis
echo 1 > /sys/class/android_usb/android0/f_acm/instances
echo 1 > /sys/class/android_usb/android0/enable

echo '------------start_gadget.sh-- driver enabled' > /dev/ttyS0

sleep 5

ifconfig rndis0 192.168.77.1

/data/busybox telnetd &

#while :
#do
#done

echo '------------start_gadget.sh--end ------' > /dev/ttyS0

