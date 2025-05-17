
{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

# boot.loader.systemd-boot.enable = true;
# boot.loader.efi.canTouchEfiVariables = true;

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";

  networking.hostName = "hyprbox";
  networking.networkmanager.enable = true;

  time.timeZone = "UTC";
  i18n.defaultLocale = "en_US.UTF-8";

  users.users.dennis = {
    hashedPassword = "$6$Nts6LgRgMWCIqxTt$2pRj2sP4DxGSI0D7Y9V097YKGSsJ.CxWAKeqd9YVSTJSJhWmXGpH9egIJvr6URm5CAaiq30h4s57/dqxysYFI0";
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
#    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    noto-fonts
    noto-fonts-emoji
  ];

  security.pam.services.hyprlock = {};
  system.stateVersion = "25.05";
}
