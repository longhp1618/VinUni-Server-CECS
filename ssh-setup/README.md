# SSH Public Key

## Create a new key pair
* Open terminal on Linux/macOS or PowerShell on Windows, type:
```bash
ssh-keygen -t ed25519
```
* Then tap 'Enter' four times.

Expected result on Windows:

<img width="581" alt="image" src="https://github.com/longhoangphi225/VinUni-Server-CECS/blob/main/.github/images/173214087-57db2dd9-59f6-45fc-824a-db565c1eeec8.png">


## Show your public key
* On Linux/macOS, type on terminal:
```bash
cat ~/.ssh/id_ed25519.pub
```

* On Windows, type on PowerShell:
```bash
cat $HOME/.ssh/id_ed25519.pub
```
<img width="790" alt="image" src="https://github.com/longhoangphi225/VinUni-Server-CECS/blob/main/.github/images/173214118-26bde204-f48b-4cc4-8928-0f5ba25bcd7d.png">

# Create config file
* On Linux/macOS, open terminal:
```bash
nano ~/.ssh/config
```
* On Windows, open PowerShell:
```bash
echo >> $HOME/.ssh/config
```

Copy and paste this block
```
Host cecs
    HostName 100.88.197.50
    User ubuntu
    Port [port]
```

**Note**: The following image is only a demo, you must replace replace Host, HostName, User and Port by yours.
<img width="379" alt="image" src="https://github.com/longhoangphi225/VinUni-Server-CECS/blob/main/.github/images/173214236-afab63a4-b14c-4e1f-a1a7-8948d417e0f8.png">

**Note**: PM me to get your own *port*.

# Connect
After finishing [tailscale-setup](https://github.com/longhoangphi225/VinUni-Server-CECS/tree/main/Tailscale-setup), you can ssh to cecs server
```bash
ssh cecs
```

<img width="500" alt="image" src="https://github.com/longhoangphi225/VinUni-Server-CECS/blob/main/.github/images/Screen%20Shot%202022-12-15%20at%2015.54.24.png">

# Your environment
* Ubuntu 20.04
* Miniconda3


