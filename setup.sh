if [ "${EUID}" -ne 0 ]; then
echo "You need to run this script as root"
exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
  echo "OpenVZ is not supported"
  exit 1
fi

red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
IZIN=$( curl http://ipinfo.io/ip | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permintaan Diterima...${NC}"
else
echo -e "${red}Permintaan Ditolak!${NC}";
echo "Hanya untuk pengguna terdaftar"
fi
apt update; apt-get -y upgrade
mkdir /etc/v2ray
mkdir /var/lib/premium-script
clear

#Add Domain / Subdomain
read -p " Please input your domain/subdomain : " domain
echo "$MYIP" >> /var/lib/premium-script/ipvps.conf
echo "$domain" >> /etc/v2ray/domain
echo ""
echo -e "\e[0;32m Success domain/subdomain Has Been Add! "
sleep 1
clear
#wget https://github.com/${GitUser}/
mkdir /etc/rocknet && chmod +x /etc/rocknet
cd /etc/rocknet
GitUser="rockneters"
wget https://raw.githubusercontent.com/${GitUser}/jalawatu/main/install/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
wget https://raw.githubusercontent.com/${GitUser}/jalawatu/main/install/websocket.sh && chmod +x websocket.sh && screen -S websocket ./websocket.sh
wget https://raw.githubusercontent.com/${GitUser}/jalawatu/main/install/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
wget https://raw.githubusercontent.com/${GitUser}/jalawatu/main/install/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
wget https://raw.githubusercontent.com/${GitUser}/jalawatu/main/install/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget https://raw.githubusercontent.com/${GitUser}/jalawatu/main/install/shadowsocksobfs.sh && chmod +x shadowsocksobfs.sh && screen -S ss ./shadowsocksobfs.sh
wget https://raw.githubusercontent.com/${GitUser}/jalawatu/main/install/ins-vt.sh && chmod +x ins-vt.sh && screen -S v2ray ./ins-vt.sh
wget https://raw.githubusercontent.com/${GitUser}/jalawatu/main/install/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
wget https://raw.githubusercontent.com/${GitUser}/jalawatu/main/install/set-br.sh && chmod +x set-br && ./set-br.sh
wget https://raw.githubusercontent.com/${GitUser}/jalawatu/main/install/ins-menu.sh && chmod +x ins-menu.sh && ./ins-menu.sh
cd
rm -r /etc/rocknet
clear
history -c
echo "1.1" > /home/ver
clear
echo "================================="
echo "Installation has been completed!!"
echo "================================="
sleep 3s
echo "-----------------------------Mod by ROCKNET VPN---------------------------" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "--------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 442"  | tee -a log-install.txt
echo "   - Stunnel4                : 443"  | tee -a log-install.txt
echo "   - Dropbear                : 442, 777"  | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080, 8888 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Wireguard               : 7070"  | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN          : 1701"  | tee -a log-install.txt
echo "   - PPTP VPN                : 1732"  | tee -a log-install.txt
echo "   - SSTP VPN                : 444"  | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543"  | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 2443-2543"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 3443-3543"  | tee -a log-install.txt
echo "   - V2RAY Vmess TLS         : 8443"  | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS    : 80"  | tee -a log-install.txt
echo "   - V2RAY Vless TLS         : 2083"  | tee -a log-install.txt
echo "   - V2RAY Vless None TLS    : 8880"  | tee -a log-install.txt
echo "   - Trojan                  : 2087"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                 : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                 : [ON]"  | tee -a log-install.txt
echo "   - Dflate                   : [ON]"  | tee -a log-install.txt
echo "   - IPtables                 : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot              : [ON]"  | tee -a log-install.txt
echo "   - IPv6                     : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 00.00 GMT +7" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "--------------------------------------------------------------------------" | tee -a log-install.txt
echo "   - Dev/Main                 : Rocknet Store Project"  | tee -a log-install.txt
echo "   - Telegram                 : t.me/RocknetStore"  | tee -a log-install.txt
echo "--------------------------------------------------------------------------" | tee -a log-install.txt
echo ""
echo "Please reboot...!!"
echo ""
rm -f setup.sh
