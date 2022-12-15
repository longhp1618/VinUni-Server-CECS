# Tailscale

## Download tailscale
* Download tailscale from [here](https://tailscale.com)

* After downloading, if you are using MacOS, you should create alias on ```~/.bash_profile``` to call tailscale command from cli.
```
# For MAC user:
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
```

# Login tailscale node of CECS server
```
# Run 2 lines:
sudo tailscale logout
sudo tailscale up --auth-key
```
