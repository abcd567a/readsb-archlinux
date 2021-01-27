#!/bin/bash
echo "Installing lighttpd"
pacman -Sy lighttpd 
echo "---------------------------"
echo "Configuring  lighttpd"

mkdir -p /etc/lighttpd/conf.d
  
chmod 777  /etc/lighttpd/lighttpd.conf
echo ""  >> /etc/lighttpd/lighttpd.conf
echo "server.modules += ( \"mod_alias\" )" >> /etc/lighttpd/lighttpd.conf
echo "include \"/etc/lighttpd/conf.d/*\""  >> /etc/lighttpd/lighttpd.conf
chmod 644  /etc/lighttpd/lighttpd.conf

systemctl enable lighttpd.service
systemctl restart lighttpd

echo "--------------------------------"
echo "Installation and configuration of lighttpd completed...."
