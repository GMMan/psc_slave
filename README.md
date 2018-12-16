psc_slave Reloaded
==================

Based on [honeylab's work](https://bitbucket.org/bakueikozo/psc_slave)

This hack enables telnet access to your PlayStation Classic without permanently
modifying the system. **This branch is for installing internally so you don't
have to plug in a USB drive every reboot.**

Prerequisite
------------
You need Android USB drivers installed and your OS must have support for RNDIS.

Usage
-----
1. On the console, create `/data/sony/bin` and `/data/sony/custom` directories.
2. Upload `sonydemo` to `/data/sony/bin`.
3. Upload the `setup_slave` folder to `/data/sony/custom`.
4. Open a shell, and adjust permissions:
   ```
   chmod +x /data/sony/bin/sonydemo
   cd /data/sony/custom/setup_slave
   chmod +x busybox psc_slave_internal.sh start
   chmod 664 *.socket *.service
   ```
5. Reboot the console.
   ```
   shutdown -h now
   ```
   Remove any USB drives you may have inserted.
6. When you turn the console on, the LED will be momentarily green, turn yellow
   for a few seconds, then back to green. At this point the console will show
   the regular splash screen and boot into the menu.
7. Depending on your operating system, you may need to set your IP address to
   the 169.254.215.x subnet.
8. Using a telnet client, telnet to 169.254.215.100. Login as root, no need to
   enter password. Also, FTP is enabled by default in this version.
9.  (Optional) Shut down the `usbwatch` service. The service periodically polls
    USB drives for diagnostics/update packages (such as this one), and will copy
    it into internal memory. You don't want to wear your flash down unnecessarily,
    so stop the service. Type this into the shell:
    ```
    systemctl stop usbwatch.service
    ```
    If you want to restart the service, type:
    ```
    systemctl start usbwatch.service
    ```

Credits
-------
As per the original project, madmonkey, DanTheMan827, skogaby, honeylab
(bakueikozo)
