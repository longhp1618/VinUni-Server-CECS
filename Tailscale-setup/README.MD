# Tailscale

## Download tailscale
* Download tailscale from [here](https://tailscale.com)

* After downloading, if you are using MacOS, you should create alias on ```~/.bash_profile``` to call tailscale command from cli.
```
# For MAC user:
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
```

## Login tailscale node of CECS server
* Open terminal, run the two following command to login the CECS server network
```
# Run 2 lines:
tailscale logout
tailscale up --auth-key tskey-auth-k6R7os2CNTRL-9mHHm3Es2R2ZdpJazucBM2HgzfCqdrdx
```
* Check the your status that whether you have added on the network or not. You should get the results like this.

* If not, please turn off you tailscale and start again from log in step.

## ssh to server:
If can ssh to cecs server by this command line:
```
ssh ubuntu@100.77.172.118 -p [your port]
```
or if you did [ssh-setup](https://github.com/longhoangphi225/VinUni-Server-CECS/tree/main/ssh-setup)
```
ssh cecs
```
