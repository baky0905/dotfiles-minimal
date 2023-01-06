## Install and Remove

Caution: Once unregistered, all data, settings, and software associated with that distribution will be permanently lost.

- Unregister or uninstall a Linux distribution `wsl --unregister Ubuntu-20.04`
  - would remove Ubuntu from the distributions available in WSL. Running wsl --list will reveal that it is no longer listed.

- `wsl --install` as admin, and it works if not installed at all
- `wsl --list --online` to see a list of available distros
- `wsl --install -d Ubuntu-20.04` to see a list of available distros
- `wsl -l -v` check the wsl version
- If you need to update the forgotten password on a distribution that is not your default, use the command: `wsl -d Ubuntu-20.04 -u root`
  - Once your WSL distribution has been opened at the root level inside PowerShell, you can use this command to update your password: passwd <username> where <username> is the username of the account in the distribution whose password you've forgotten.
- `sudo apt update && sudo apt upgrade`


## VS Code

In order to install the WSL extension, you will need the 1.35 May release version or later of VS Code. We do not recommend using WSL in VS Code without the WSL extension as you will lose support for auto-complete, debugging, linting, etc. Fun fact: this WSL extension is installed in $HOME/.vscode/extensions (enter the command ls $HOME\.vscode\extensions\ in PowerShell).

`sudo apt-get update`

`sudo apt-get install wget ca-certificates`

`code .`


## docker

Enable systemd

`sudo nano /etc/wsl.conf`

add

```
[boot]
systemd=true
```

Install docker

`sudo apt update`
`sudo apt install docker.io -y`

Add the user to the docker group.
`sudo usermod -aG docker $USER`

`docker --version`

`wsl --shutdowns`

`Enter the WSL distro (e.g., Ubuntu 22.04.1 LTS) via Windows terminal and validate the docker installation.`

`docker run hello-world`


