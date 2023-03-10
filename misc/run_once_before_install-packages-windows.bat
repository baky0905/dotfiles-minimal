#{{- if eq .chezmoi.os "windows" }}
:: upgrade choco .exe and add choco to PATH
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/upgrade.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco feature enable -n allowGlobalConfirmation

:: install scoop
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iwr -useb get.scoop.sh | iex"

:: upgrade all the packages

:::: BROWSERS
choco upgrade googlechrome -y

:::: DEV TOOLS
choco upgrade git -y
#choco upgrade conemu -y
#choco upgrade sourcetree -y
#choco upgrade golang -y
choco upgrade microsoft-windows-terminal -y
choco upgrade vscode -y

:::: MEDIA
choco upgrade exiftool -y
choco upgrade potplayer -y
#choco upgrade kindle -y
choco upgrade hugin.upgrade -y
#choco upgrade spotify -y

:::: CREATIVE
choco upgrade foxitreader -y
choco upgrade hugo -y

:::: CLI TOOLS
choco upgrade ag -y
choco upgrade starship -y
choco upgrade bat -y
choco upgrade syncthing -y
choco upgrade fzf -y
choco upgrade zoxide -y
choco upgrade zstandard -y
choco upgrade delta -y

:::: UTILS
#choco upgrade dropbox -y
choco upgrade googledrive -y
choco upgrade coretemp -y
choco upgrade directoryopus -y
choco upgrade autoruns -y
choco upgrade unchecky -y
choco upgrade powertoys -y
choco upgrade treesizefree -y
choco upgrade bleachbit -y
choco upgrade revo-uninstaller -y
choco upgrade shutup10 -y
choco upgrade linkshellextension -y

:::: FONTS
choco upgrade firacode -y
choco upgrade fontbase -y
choco upgrade sourcecodepro -y
choco upgrade hackfont -y
choco upgrade cascadiamono -y
choco upgrade cascadiacode -y
choco upgrade cascadiafonts -y
choco upgrade cascadiamonopl -y
choco upgrade cascadiacodepl -y

:::: GAMES
#choco upgrade goggalaxy -y
#choco upgrade steam -y
#choco upgrade origin -y
#choco upgrade epicgameslauncher -y

:::: Drivers
#choco upgrade geforce-experience -y
#choco upgrade geforce-game-ready-driver -y
:: choco upgrade intel-dsa -y

#IF NOT EXIST "c:\Program Files\Git\usr\bin\zsh.exe" (
#    curl -L https://mirror.msys2.org/msys/x86_64/zsh-5.8-5-x86_64.pkg.tar.zst #> %TEMP%/zsh.pkg.tar.zst
#    zstd -d %TEMP%/zsh.pkg.tar.zst
#    move %TEMP%\zsh.pkg "C:\Program Files\Git\zsh.pkg.tar"
#    cd  "C:\Program Files\Git\"
#    tar -xvf zsh.pkg.tar
#    del %TEMP%\zsh.pkg.tar.zst
#    del "C:\Program Files\Git\zsh.pkg.tar"
#)

#IF NOT EXIST %HOMEPATH%/.antigen.zsh (
#    curl -L git.io/antigen > %HOMEPATH%/.antigen.zsh
#)

{{- end }}
