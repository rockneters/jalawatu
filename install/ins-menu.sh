#!/bin/bash
# ==================================================

clear
[[ "$(whoami)" != "root" ]] && {
echo -e "\033[1;33m[\033[1;31mError\033[1;33m] \033[1;37m- \033[1;33mAnda harus login sebagai root\033[0m"
rm $HOME/Plus > /dev/null 2>&1; exit 0
}
#Git User --------------------------------
GitUser="rockneters/jalawatu" #${GitUser}
cd
cd /usr/bin
wget -O addl2tp "https://raw.githubusercontent.com/${GitUser}/main/menu/addl2tp.sh"
wget -O addpptp "https://raw.githubusercontent.com/${GitUser}/main/menu/addpptp.sh"
wget -O addss "https://raw.githubusercontent.com/${GitUser}/main/menu/addss.sh"
wget -O addssr "https://raw.githubusercontent.com/${GitUser}/main/menu/addssr.sh"
wget -O addsstp "https://raw.githubusercontent.com/${GitUser}/main/menu/addsstp.sh"
wget -O addtr "https://raw.githubusercontent.com/${GitUser}/main/menu/addtr.sh"
wget -O addvless "https://raw.githubusercontent.com/${GitUser}/main/menu/addvless.sh"
wget -O addwg "https://raw.githubusercontent.com/${GitUser}/main/menu/addwg.sh"
wget -O addws "https://raw.githubusercontent.com/${GitUser}/main/menu/addws.sh"
wget -O cek "https://raw.githubusercontent.com/${GitUser}/main/menu/cek.sh"
wget -O ceklim "https://raw.githubusercontent.com/${GitUser}/main/menu/ceklim.sh"
wget -O cekss "https://raw.githubusercontent.com/${GitUser}/main/menu/cekss.sh"
wget -O ceksstp "https://raw.githubusercontent.com/${GitUser}/main/menu/ceksstp.sh"
wget -O cektr "https://raw.githubusercontent.com/${GitUser}/main/menu/cektr.sh"
wget -O cekvless "https://raw.githubusercontent.com/${GitUser}/main/menu/cekvless.sh"
wget -O cekwg "https://raw.githubusercontent.com/${GitUser}/main/menu/cekwg.sh"
wget -O cekws "https://raw.githubusercontent.com/${GitUser}/main/menu/cekws.sh"
wget -O delete "https://raw.githubusercontent.com/${GitUser}/main/menu/delete.sh"
wget -O dell2tp "https://raw.githubusercontent.com/${GitUser}/main/menu/dell2tp.sh"
wget -O delpptp "https://raw.githubusercontent.com/${GitUser}/main/menu/delpptp.sh"
wget -O delss "https://raw.githubusercontent.com/${GitUser}/main/menu/delss.sh"
wget -O delssr "https://raw.githubusercontent.com/${GitUser}/main/menu/delssr.sh"
wget -O delsstp "https://raw.githubusercontent.com/${GitUser}/main/menu/delsstp.sh"
wget -O deltr "https://raw.githubusercontent.com/${GitUser}/main/menu/deltr.sh"
wget -O delvless "https://raw.githubusercontent.com/${GitUser}/main/menu/delvless.sh"
wget -O delwg "https://raw.githubusercontent.com/${GitUser}/main/menu/delwg.sh"
wget -O delws "https://raw.githubusercontent.com/${GitUser}/main/menu/delws.sh"
wget -O hapus "https://raw.githubusercontent.com/${GitUser}/main/menu/hapus.sh"
wget -O renew "https://raw.githubusercontent.com/${GitUser}/main/menu/renew.sh"
wget -O renewl2tp "https://raw.githubusercontent.com/${GitUser}/main/menu/renewl2tp.sh"
wget -O renewpptp "https://raw.githubusercontent.com/${GitUser}/main/menu/renewpptp.sh"
wget -O renewss "https://raw.githubusercontent.com/${GitUser}/main/menu/renewss.sh"
wget -O renewssr "https://raw.githubusercontent.com/${GitUser}/main/menu/renewssr.sh"
wget -O renewsstp "https://raw.githubusercontent.com/${GitUser}/main/menu/renewsstp.sh"
wget -O renewtr "https://raw.githubusercontent.com/${GitUser}/main/menu/renewtr.sh"
wget -O renewvless "https://raw.githubusercontent.com/${GitUser}/main/menu/renewvless.sh"
wget -O renewwg "https://raw.githubusercontent.com/${GitUser}/main/menu/renewwg.sh"
wget -O addws "https://raw.githubusercontent.com/${GitUser}/main/menu/renewws.sh"
wget -O renewws "https://raw.githubusercontent.com/${GitUser}/main/menu/slhost.sh"
wget -O trial "https://raw.githubusercontent.com/${GitUser}/main/menu/trial.sh"
wget -O usernew "https://raw.githubusercontent.com/${GitUser}/main/menu/usernew.sh"
wget -O xpl2tp "https://raw.githubusercontent.com/${GitUser}/main/menu/xpl2tp.sh"
wget -O xppptp "https://raw.githubusercontent.com/${GitUser}/main/menu/xppptp.sh"
wget -O xpss "https://raw.githubusercontent.com/${GitUser}/main/menu/xpss.sh"
wget -O xpssr "https://raw.githubusercontent.com/${GitUser}/main/menu/xpssr.sh"
wget -O xpsstp "https://raw.githubusercontent.com/${GitUser}/main/menu/xpsstp.sh"
wget -O xptr "https://raw.githubusercontent.com/${GitUser}/main/menu/xptr.sh"
wget -O xpvless "https://raw.githubusercontent.com/${GitUser}/main/menu/xpvless.sh"
wget -O xpwg "https://raw.githubusercontent.com/${GitUser}/main/menu/xpwg.sh"
wget -O xpws "https://raw.githubusercontent.com/${GitUser}/main/menu/xpws.sh"
wget -O addhost "https://raw.githubusercontent.com/${GitUser}/main/menu/addhost.sh"
wget -O addhost1 "https://raw.githubusercontent.com/${GitUser}/main/menu/addhost1.sh"
wget -O speedtest "https://raw.githubusercontent.com/${GitUser}/main/menu/speedtest"
wget -O tendang "https://raw.githubusercontent.com/${GitUser}/main/menu/tendang.sh"
wget -O member "https://raw.githubusercontent.com/${GitUser}/main/menu/member.sh"
wget -O ram "https://raw.githubusercontent.com/${GitUser}/main/menu/ram.sh"
wget -O clear-log "https://raw.githubusercontent.com/${GitUser}/main/menu/clear-log.sh"

chmod +x addl2tp
chmod +x addpptp
chmod +x addss
chmod +x addssr
chmod +x addsstp
chmod +x addtr
chmod +x addvless
chmod +x addwg
chmod +x addws
chmod +x cek
chmod +x ceklim
chmod +x cekss
chmod +x ceksstp
chmod +x cektr
chmod +x cekvless
chmod +x cekwg
chmod +x cekws
chmod +x delete
chmod +x dell2tp 
chmod +x delpptp
chmod +x delss 
chmod +x delssr
chmod +x delsstp
chmod +x deltr
chmod +x delvless
chmod +x delwg
chmod +x delws
chmod +x hapus
chmod +x renew
chmod +x renewl2tp
chmod +x renewpptp
chmod +x renewss
chmod +x renewssr
chmod +x renewsstp
chmod +x renewtr
chmod +x renewvless
chmod +x renewwg
chmod +x addws
chmod +x renewws
chmod +x trial
chmod +x usernew
chmod +x xpl2tp
chmod +x xppptp
chmod +x xpss
chmod +x xpssr
chmod +x xpsstp
chmod +x xptr
chmod +x xpvless
chmod +x xpwg
chmod +x xpws
chmod +x addhost
chmod +x addhost1
chmod +x speedtest
chmod +x member
chmod +x tendang
chmod +x ram
chmod +x clear-log
