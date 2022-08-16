#!/bin/bash

echo 'options thinkpad_acpi fan_control=1' | sudo tee /lib/modprobe.d/thinkpad_acpi.conf
sudo apt install thinkfan
sudo touch /etc/thinkfan.conf

sudo cp ./thinkfan.conf /etc/thinkfan.conf

echo 'THINKFAN_ARGS="-c /etc/thinkfan.conf"' | sudo tee -a /etc/default/thinkfan

sudo systemctl enable thinkfan
sudo systemctl restart thinkfan
