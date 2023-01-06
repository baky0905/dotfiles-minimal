# baky0905's dotfiles

These are my dotfiles. There are many like them, but these are mine.

## Installation

To setup a new box with these dotfiles you'll need [chezmoi][]. Once installed, use it to clone the dotfiles repo.


### Ubuntu / WSL

```bash
curl -sfL https://git.io/chezmoi | sh
chezmoi init --apply --verbose https://github.com/baky0905/dotfiles-minimal.git
```

### Windows

```powershell
choco install chezmoi git
chezmoi init --apply --verbose https://github.com/baky0905/dotfiles-minimal.git
```


## Install location

`~/.local/share/chezmoi`


## Making changes to dotfiles

TODO


### Adding files to chezmoi as symlinks

TODO


## Pulling updates from GitHub

You can pull updates using `chezmoi update`.


[chezmoi]: https://www.chezmoi.io/
