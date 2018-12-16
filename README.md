psc_slave Reloaded
==================

Based on [honeylab's work](https://bitbucket.org/bakueikozo/psc_slave)

This hack enables telnet access to your PlayStation Classic without permanently
modifying the system.

Prerequisite
------------
You need Android USB drivers installed and your OS must have support for RNDIS.

Security Notice
---------------
Because anyone can sign a valid update package, please make sure that what you
download is an original version. Otherwise, you may run malicious software that
could damage the software on your console.

A SHA-1 hash will be provided for each release. To check the version of the
release you downloaded, look inside the `diag` file inside the folder in the
download package.

Usage
-----
Please note that the console's package loader will only load one package at a time.
You cannot use this and lolhack at the same time (but you don't need to, since
you have a shell at your disposal).

1. Download the latest version from the releases page.
2. Format a USB drive as FAT32, volume label `SONY`
3. Extract the contents of the release ZIP file to the root of the drive. That
   means you should have the folder with the long string of characters in your
   drive, and not just a .BIN file.
4. Connect the console to your computer without it shutting down. You have a
   couple of options:
   -  Use a USB cable with a charge/data switch. Put the cable to charge mode,
      then plug it into your console and computer. Wait for the yellow light to
      come on. Then switch the cable to data mode. **Note: I don't recommend you
      plug the console directly into your computer, as your computer may not
      supply enough current and could become damaged from overcurrent.**
   -  Use a powered USB hub. Make sure the hub is plugged into power and your
      computer, then plug the console in. This somehow bypasses its check for
      a computer host. If you leave the hub unplugged, the console will detect
      it's not plugged into a regular power adapter and will shut down.
   -  Use a Y-cable. Plug the power end in, wait for the yellow light, then plug
      the data end in. **Note: Y-cables have inherent risks, make sure you're
      plugging both USB-A plugs to the same host to avoid blowing things out.**
5. Plug in your USB drive.
6. Turn on the console.
7. Wait for the hack to apply. You will see the light turn yellow for one second,
   then back to green, and to yellow again. When the light turns back to green
   the next time, the hack is complete, and you can either unplug the drive or
   leave it in. The hack will not reapply itself again for the same boot (you
   will see the light turn yellow for one second, but it will not turn yellow
   again immediately after that).
8. Depending on your operating system, you may need to set your IP address to
   the `169.254.215.x` subnet.
9. Using a telnet client, telnet to `169.254.215.100`. Login as `root`, no need
   to enter password.
10. (Optional) Shut down the `usbwatch` service. The service periodically polls
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
11. (Optional) Start the FTP server. This makes it easy to transfer files to your
    device, without having to replug the USB drive.
    ```
    systemctl start ftp.socket
    ```

If you reboot the console, you will need to apply this hack again.

Credits
-------
As per the original project, madmonkey, DanTheMan827, skogaby, honeylab
(bakueikozo)
