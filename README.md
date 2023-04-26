# thinkfan-config
Manage your thinkpad fan speed in Ubuntu 22.04

# How to use
```
$ git clone https://github.com/alguacilaguamara/thinkfan-config.git
$ chmod +x fan-speed-thinkpad-config.sh
$ sudo ./fan-speed-thinkpad-config.sh
```

If you have problems related to the thinkfan service, try to:
```
echo "options thinkpad_acpi fan_control=1 experimental=1" | sudo tee /etc/modprobe.d/thinkfan.conf
sudo modprobe -rv thinkpad_acpi
sudo modprobe -v thinkpad_acpi
```
And then restart the service

```
systemctl restart thinkfan
```
