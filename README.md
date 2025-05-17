
# Hyprland NixOS Flake

🎯 A minimal, modern and modular [NixOS](https://nixos.org) configuration using **Hyprland**, **Home Manager**, and **flakes**. Designed to be sleek and user-friendly out of the box with theming and UX polish.

---

## ✨ Features

- **Hyprland**: Dynamic tiling Wayland compositor
- **Home Manager**: Per-user config and packages
- **Flakes**: Reproducible, modular Nix config
- **Theming**:
  - GTK Theme: Catppuccin Macchiato
  - Icons: Colloid Teal Dark + Numix Circle
  - Font: JetBrains Mono Nerd Font
- **Apps**:
  - Terminal: Kitty + Starship prompt
  - File managers: Thunar (GUI) + Yazi (TUI)
  - Launcher: rofi-wayland
  - Lock: hyprlock
  - Wallpaper: hyprpaper
  - Notifications: dunst
  - Clipboard: wl-clipboard
  - Bar: waybar

---

## 📦 Structure

```
.
├── flake.nix
├── hosts/
│   └── hyprbox/
│       ├── configuration.nix
│       └── hardware-configuration.nix (not included - auto generated)
└── home/
    └── dennis.nix
```

---

## 🚀 Usage

1. Extract this repo:
   ```bash
   unzip hyprland-nixos-flake.zip -d hyprland-config
   cd hyprland-config
   ```

2. Init Git and push:
   ```bash
   git init
   git remote add origin <your-repo-url>
   git add .
   git commit -m "Initial commit"
   git push -u origin main
   ```

3. Build system:
   ```bash
   sudo nixos-rebuild switch --flake .#hyprbox
   ```

---

## 📸 Post-Install

After login to Hyprland:

- Use `nwg-look` to apply GTK + icon themes
- Use `hyprpaper` to set your wallpaper
- Use `rofi` or `kitty` to launch apps

---

## 🧪 Notes

- You need to generate your own `hardware-configuration.nix`
- Replace `dennis` in paths with your actual username
- Assumes `x86_64-linux` architecture

---

## ❤️ Inspired by

- [Catppuccin Themes](https://github.com/catppuccin)
- [Hyprland Wiki](https://wiki.hyprland.org/)
- [Home Manager Manual](https://nix-community.github.io/home-manager/)

---

Enjoy your next-gen Linux desktop ✨
