# dotfiles

## For Termux

```
pkg i android-tools binutils build-essential bzip2 clang curl ffmpeg file git make neofetch openjdk-17 openssh proot-distro python readline rust starship wget zip zstd
```
```
pip install --upgrade pip && pip install --upgrade yt-dlp
```
```
curl https://raw.githubusercontent.com/utkustnr/dotfiles/main/termux/.aliases > ~/.aliases && echo "source /data/data/com.termux/files/home/.aliases" >> $PREFIX/etc/bash.bashrc && mkdir ~/bin && curl https://raw.githubusercontent.com/utkustnr/dotfiles/main/termux/bin/termux-url-opener > ~/bin/termux-url-opener && chmod +x ~/bin/termux-url-opener && mkdir ~/.termux && curl https://raw.githubusercontent.com/utkustnr/dotfiles/main/termux/.termux/termux.properties > ~/.termux/termux.properties && curl -fLo ~/.termux/font.ttf https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Noto/Mono/complete/Noto%20Mono%20Nerd%20Font%20Complete%20Mono.ttf && mkdir -p ~/.config/neofetch && curl https://raw.githubusercontent.com/utkustnr/dotfiles/main/termux/.config/neofetch/ascii > ~/.config/neofetch/ascii && curl https://raw.githubusercontent.com/utkustnr/dotfiles/main/termux/.config/neofetch/config.conf > ~/.config/neofetch/config.conf && mkdir -p ~/.config/yt-dlp && curl https://raw.githubusercontent.com/utkustnr/dotfiles/main/termux/.config/yt-dlp/config > ~/.config/yt-dlp/config && curl https://starship.rs/presets/toml/nerd-font-symbols.toml > ~/.config/starship.toml && echo 'eval "$(starship init bash)"' >> $PREFIX/etc/bash.bashrc
```
