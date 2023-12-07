# thinkfan-config
Manage your thinkpad fan speed in Ubuntu 22.04

# How to use
```
$ git clone https://github.com/alguacilaguamara/thinkfan-config.git
$ chmod +x fan-speed-thinkpad-config.sh
$ sudo ./fan-speed-thinkpad-config.sh
```

## Fedora
Copy the content from thinkfan.conf to /etc/thinkfan.conf using vim for example.
Then change the config to thinkfan_acpi and start the new thinkfan service:
```sh
sudo su
```
```sh
echo -e "options thinkpad_acpi fan_control=1" | sudo tee /etc/modprobe.d/thinkpad_acpi.conf
modprobe -r thinkpad_acpi
modprobe thinkpad_acpi
modprobe -c | grep ^options | grep thinkpad_acpi
systemctl enable --now thinkfan
```
