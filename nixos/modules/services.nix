{ pkgs, ... }:
let
  hplipPatched = pkgs.hplip.overrideAttrs (old: {
    postInstall = (old.postInstall or "") + ''
      sed -i 's/URLopener/OpenerDirector/g' $out/share/hplip/base/device.py
      sed -i 's/\.getcode()/.status()/g' $out/share/hplip/base/device.py
    '';
  });
in
{  
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
    gvfs.enable = true;

    desktopManager.plasma6.enable = true;
    displayManager.sddm.enable = true;
    displayManager.sddm.wayland.enable = true;
    
    xserver.enable = true;
  };

  environment.systemPackages = [ hplipPatched ];
}
