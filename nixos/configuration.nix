# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{
  config,
  lib,
  pkgs,
  inputs,
  ...
}: {
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      inputs.noctalia.nixosModules.default
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader = {
    efi.canTouchEfiVariables = true;
    systemd-boot.enable = true;
    timeout = 0;
  };

  # Set the kernel version.
  boot.kernelPackages = pkgs.linuxPackages_6_18;

  networking.hostName = "nixos"; # Define your hostname.

  # Configure network connections interactively with nmcli or nmtui.
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Moscow";

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  # i18n.defaultLocale = "en_US.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  #   useXkbConfig = true; # use xkb.options in tty.
  # };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs = {

    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
    };

  };

  hardware = {

    # Enable OpenGL
    graphics = {
      enable = true;
      extraPackages = with pkgs; [ nvidia-vaapi-driver libva-vdpau-driver ];
      enable32Bit = true;
    };

    nvidia = {
      # Enable open kernel modules for newer GPUs (Blackwell/RTX 50-series)
      # Note: Requires kernel with CONFIG_NVIDIA_OPEN_MODULE=y
      open = true; 
    
      modesetting.enable = true;
    
      # Use the latest available driver package
      package = config.boot.kernelPackages.nvidiaPackages.latest;
    
      # Optional: Enable nvidia-settings
      nvidiaSettings = true;
    };

  };

  services = {

    # Enable X11 and the nvidia drivers
    xserver = {
      enable = true;
      videoDrivers = [ "nvidia" ];

      # Configure keymap in X11
      xkb.layout = "us";
      xkb.options = "eurosign:e,caps:escape";
    };

    # Enable CUPS to print documents.
    printing = {
      enable = true;

      # Add HPLIP driver with proprietary plugin
      drivers = [ pkgs.hplipWithPlugin ];
    };
    
    # Enable sound.
    pipewire = {
      enable = true;
      pulse.enable = true;
    };

    # Open the firewall for printing.
    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };

    # Enable touchpad support (enabled default in most desktopManagers).
    # libinput.enable = true;

    flatpak.enable = true;

    desktopManager.plasma6.enable = true;
    displayManager.sddm.enable = true;
    displayManager.sddm.wayland.enable = true;

  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.bismarck = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
    packages = with pkgs; [
      tree
    ];
  };

  environment.systemPackages = with pkgs; [
    kitty
    fastfetch
    starship
    btop
    cmatrix
    unimatrix
    asciiquarium
    hyfetch
    lavat
    tty-clock
    cava
    pipes
    nemo
    nemo-fileroller
    xarchiver
    vscodium
    polkit
    udiskie
    mpvpaper
    brave
    vesktop
    gpu-screen-recorder
    vlc
    wget
    curl
    cacert
    nvd
    tor-browser
    keepassxc
    ddcutil
    pciutils
    nftables
    onlyoffice-desktopeditors
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.freesmlauncher.packages.${pkgs.stdenv.hostPlatform.system}.freesmlauncher
  ];

  programs = {

    zsh = {
      enable = true;
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;
      histSize = 1000;
    };

    git.enable = true;
    firefox.enable = true;

    clash-verge = {
      enable = true;
      serviceMode = true;
      tunMode = true;
      autoStart = true;
    };

    noctalia = {
      enable = true;

      # Enables NetworkManager, Bluetooth, UPower, and a power profile service.
      recommendedServices.enable = true;
    };
    umbriel.enable = true;
  };

  environment.etc."profile.d/clash-verge".text = ''
    export WEBKIT_DISABLE_COMPOSITING_MODE=1
  '';

  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).
  # environment.systemPackages = with pkgs; [
  #   vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #   wget
  # ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  boot.kernel.sysctl."net.ipv4.ip_forward" = 1;

  networking = {
    firewall = {
      trustedInterfaces = [ "Mihomo" ];
      extraCommands = ''
        ip46tables -t mangle -I nixos-fw-rpfilter -i Mihomo -j RETURN
      '';
      extraReversePathFilterRules = ''iifname { "Mihomo" } accept comment "trusted interface"'';
    };
  };  

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "26.05"; # Did you read the comment?

}

