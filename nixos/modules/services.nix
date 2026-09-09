{ pkgs, ... }: {
  services = {
    printing = {
      enable = true;
      drivers = [ pkgs.hplipWithPlugin ];
    };

    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };

    flatpak.enable = true;

    desktopManager.plasma6.enable = true;
    displayManager.sddm.enable = true;
    displayManager.sddm.wayland.enable = true;
    
    xserver.enable = true;
  };
}
