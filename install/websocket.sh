#!/bin/bash
clear
sleep 1
cd
#Buat name user github dan nama folder
GitUser="rockneters"

#Install system auto run
#System OpenSSH Websocket-SSH Python
cd
cd /etc/systemd/system/
wget -O /etc/systemd/system/ws-openssh.service https://raw.githubusercontent.com/${GitUser}/jalawatu/main/modul/ws-openssh.service
wget -O /etc/systemd/system/ws-dropbear.service https://raw.githubusercontent.com/${GitUser}/jalawatu/main/modul/ws-dropbear.service
wget -O /etc/systemd/system/ws-stunnel.service https://raw.githubusercontent.com/${GitUser}/jalawatu/main/modul/ws-stunnel.service
wget -O /etc/systemd/system/ws-ovpn.service https://raw.githubusercontent.com/${GitUser}/jalawatu/main/modul/ws-ovpn.service

#Install Script Websocket-SSH Python
cd
cd /usr/local/bin/
wget -O /usr/local/bin/ws-openssh https://raw.githubusercontent.com/${GitUser}/jalawatu/main/modul/ws-openssh && chmod +x /home/admin/ws-openssh
wget -O /usr/local/bin/ws-dropbear https://raw.githubusercontent.com/${GitUser}/jalawatu/main/modul/ws-dropbear && chmod +x /home/admin/bin/ws-dropbear
wget -O /usr/local/bin/ws-stunnel https://raw.githubusercontent.com/${GitUser}/jalawatu/main/modul/ws-stunnel && chmod +x /home/admin/ws-stunnel
wget -O /usr/local/bin/ws-ovpn https://raw.githubusercontent.com/${GitUser}/jalawatu/main/modul/ws-ovpn && chmod +x /home/admin/ws-ovpn
chmod +x /usr/local/bin/ws-openssh

cd
systemctl daemon-reload
#Enable & Start & Restart ws-openssh service
systemctl enable ws-openssh.service
systemctl start ws-openssh.service
systemctl restart ws-openssh.service

#Enable & Start & Restart ws-dropbear service
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service

#Enable & Start & Restart ws-stunnel service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service

#Enable & Start ws-ovpn service
systemctl enable ws-ovpn.service
systemctl start ws-ovpn.service
systemctl restart ws-ovpn.service
