# Tailscale

## Download tailscale
* Download tailscale from [here](https://tailscale.com)

* After downloading, if you are using MacOS, you should create alias on ```~/.bash_profile``` to call tailscale command from cli.
```bash
# For MAC user:
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
```

## Login tailscale node of CECS server
* Open terminal, run the two following command to login the CECS server network
```bash
# Run 2 lines:
tailscale logout
tailscale up --auth-key tskey-auth-kq4P3r5J8A11CNTRL-myEJ1YVP7R9DLTedDLcbQ9PhgdWdUaL2
```
* Check the your status that whether you have added on the network or not. You should get the results like this.
<img width="778" alt="image" src="https://github.com/longhoangphi225/VinUni-Server-CECS/blob/main/.github/images/Screen%20Shot%202022-12-15%20at%2016.20.22.png">
* If not, please turn off you tailscale and start again from log in step.

## ssh to server:
If can ssh to cecs server by this command line:
```bash
ssh ubuntu@100.105.166.20 -p [your port] #The ip address may change. In that case, use the ip of the machine named "cecsjump-pro-e500-g6-ws720t"
```
<img width="778" alt="image" src="https://github.com/longhoangphi225/VinUni-Server-CECS/blob/main/.github/images/Screen%20Shot%202022-12-15%20at%2015.55.32.png">

or if you did [ssh-setup](https://github.com/longhoangphi225/VinUni-Server-CECS/tree/main/ssh-setup)
```bash
ssh cecs
```
<img width="778" alt="image" src="https://github.com/longhoangphi225/VinUni-Server-CECS/blob/main/.github/images/Screen%20Shot%202022-12-15%20at%2015.54.24.png">
