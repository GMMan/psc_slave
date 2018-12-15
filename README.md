# psc_slave

>Disclaimer: this can brick your console. Don't use if you don't understand every piece of how it works.

THIS IS INCOMPLETE OPEN.DO NOT USE WITHOUT YOU HAVE UART-CONSOLE OR YOU CAN FIX YOUR BRICK.

This uses lolhack, a payload launcher created by madmonkey.

This script will release console limitation and enable work as  RNDIS and ACM usb-device.

And you have already used some lolhack script.

DON'T USE if you are NOT expart for haking Playstation classic.

This script is tested only one console and by a Man.


# 1. Enable as usb device

This script overwrite some stock files.
Original files are included in this tree , but you must backup your eMMC filesystem.
Place all files on 'slave' directory in labeled 'SONY' and clean USB stick.
and use same as other lolhack scripts.

** if you already conncted UART debug port , you can see progress in your teminal **
** Use non-data USB cable or Simple USB Power plug. Clean Playstation classic will stop with data-USB cable or to USB-HOST system. **

After power-cycle , you can connect USB-cable to your PC (recommend Linux).
Some device will show up.
You can adjust start_gadget.sh for your goal.
Currentry RNDIS and ACM are tested.
on Windows, you must install driver and you may adjust driver inf file.



# 2. Disable as usb device (restore)

Place all files on 'restore' directory in labeled 'SONY' and clean USB stick.
and use same as other lolhack scripts.

** if you already conncted UART debug port , you can see progress in your teminal **
** after Disable(restore) , Playstation classic will not start with USB-HOST system . You can use only power adaptor **


# Credits:
madmonkey, DanTheMan827, skogaby , honeylab(bakueikozo)
