
{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "hyprbox";
  networking.networkmanager.enable = true;

  time.timeZone = "UTC";
  i18n.defaultLocale = "en_US.UTF-8";

  users.users.yourusername = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.zsh;
  };

  programs.zsh.enable = true;
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;

  programs.hyprland.enable = true;

  fonts.packages = with pkgs; [
    jetbrains-mono
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    noto-fonts
    noto-fonts-emoji
  ];

  security.pam.services.hyprlock = {};
  system.stateVersion = "23.11";
}
