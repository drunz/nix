
{ config, pkgs, ... }: {
  home.username = "yourusername";
  home.homeDirectory = "/home/yourusername";

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;

  programs.starship = {
    enable = true;
    settings.add_newline = false;
  };

  programs.zsh.enable = true;
  programs.kitty.enable = true;

  home.packages = with pkgs; [
    kitty
    hyprpaper
    hyprlock
    waybar
    rofi-wayland
    dunst
    wl-clipboard
    nwg-look
    swayidle
    thunar
    yazi
    firefox
    neovim
    git
    jetbrains-mono
    colloid-icon-theme
    numix-icon-theme-circle
    catppuccin-gtk
  ];

  xdg.configFile."hypr/hyprland.conf".text = ''
    monitor=,preferred,auto,1
    exec-once = hyprpaper &
    exec-once = waybar &
    exec-once = dunst &
    exec-once = nm-applet &
    exec-once = hyprlock &
    input {
      kb_layout = us
      touchpad {
        natural_scroll = yes
      }
    }
    general {
      gaps_in = 5
      gaps_out = 10
      border_size = 2
      col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
      col.inactive_border = rgba(595959aa)
      layout = dwindle
    }
    decoration {
      rounding = 8
      blur {
        enabled = true
        size = 6
        passes = 3
      }
    }
    animations {
      enabled = yes
      animation = windows, 1, 7, ease
      animation = fade, 1, 7, ease
      animation = workspaces, 1, 6, ease
    }
    bind = SUPER + L, exec, hyprlock
  '';

  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload = ~/Pictures/wall.png
    wallpaper = ,~/Pictures/wall.png
  '';
}
