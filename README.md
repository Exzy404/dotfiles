# There is no place like /home/

Hyprland dotfiles. Wayland-only setup, managed with stow.

![screenshot_preview](./assets/screenshot.png) 

## Stack

- Compositor: Hyprland
- Bar: Waybar
- Terminal: Kitty
- Launcher: Rofi-Wayland 
- Notifications: Mako
- Wallpaper: Hyprpaper
- Lock: system suspend (lol)

## Packages
### Core
| Package | Description | 
| ------------- | -------------- |
| Hyprland | Wayland Compositor & Window Manager |
| Waybar | Wayland Status Bar |
| Kitty | Terminal Emulator powered by paws and meows |

### Utilities
| Package | Description |
| ------------- | -------------- |
| Rofi | App launcher |
| Mako | Notification Daemon |
| Hyprpaper | Wallpaper |

### Fonts 
- [Draconiano](https://www.dafont.com/draconiano.font)  
- [JetBrains Mono Nerd Fonts](https://archlinux.org/packages/extra/any/ttf-jetbrains-mono-nerd/) 

### System
- pipewire
- xdg-desktop-portal-hyprland

----------

## Structure

```md
.config/
├── hypr # compositor config on lua
│   ├── config 
│   │   ├── animations.lua
│   │   ├── autostart.lua
│   │   ├── input.lua
│   │   ├── keybinds.lua
│   │   ├── output.lua
│   │   ├── permissions.lua
│   │   └── rules.lua
│   ├── hyprland.lua
│   └── hyprpaper.conf
├── kitty # terminal
│   └── kitty.conf
├── nvim # Using LazyVim
│   ├── init.lua
│   ├── lua # (with lua tho)
│   │   ├── config
│   │   │   ├── autocmds.lua
│   │   │   ├── keymaps.lua
│   │   │   └── lazy.lua
│   │   └── plugins
│   │       ├── cmp.lua
│   │       ├── colorsheme.lua
│   │       └── snacks.lua
├── rofi
│   └── config.rasi
├── tty-login # shitty tty login setup
│   └── tty-greter.sh
└── waybar # "Eww, why does it look like that" ahh top bar
    ├── config.jsonc
    ├── style.css
    └── scripts 
        └── airplane-mode.sh 
```

## Install

```bash
git clone https://github.com/Exzy404/dotfiles.git && cd dotfiles 
stow -t ~/.config .config 
```

> Main language: Spanish.  
> So don't worry if a commented section suddenly starts yelling at you in another language
