#!/bin/bash
sudo /etc/init.d/dns-clean restart
sudo /etc/init.d/networking force-reload
sudo /etc/init.d/nscd restart
sudo /etc/init.d/dnsmasq restart
