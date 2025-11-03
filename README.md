# arch-dotfiles
my dotfiles for hyprland 

dependencies
```
hyprland zsh fastfetch oh-my-posh-bin git base-devel kitty catppuccin-gtk-theme-mocha nwg-look waybar swaync hypridle hyprlock
brightnessctl hyprpaper blueman pavucontrol rofi hyprshot 
```

waybar is stolen from @binnewbs while I try to sort things out
most of the other stuff is stolen from @JaKooLit

fonts
```
ttf-jetbrains-mono-nerd
```

install w/ gnu stow
```
sudo pacman -S stow
stow -d ~/wherever you cloned this repo -t ~/ dotfiles
```

also install plugins and make sure all scripts are executable
```
chmod +x ~/.config/hypr/scripts/*.sh
chmod +x ~/.config/hypr/UserScripts/*.sh
chmod +x ~/.config/.zsh/plugins/install.sh
```
run `install.sh` and `stow` again

.poshthemes from https://github.com/JanDeDobbeleer/oh-my-posh/tree/main/themes

optional stuff I use
```
btop brave-bin visual-studio-code-bin nano yay
```

wallpapers from silent sddm theme 