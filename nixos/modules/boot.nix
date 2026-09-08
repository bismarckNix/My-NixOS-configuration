{ pkgs, ... }: {
  boot = {
    kernelPackages = pkgs.linuxPackages_6_18;

    initrd.kernelModules = [ "nvidia" "nvidia_modeset" "nvidia_uvm" "nvidia_drm" ];

    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot.enable = true;
     timeout = 0;
    };
  };
}