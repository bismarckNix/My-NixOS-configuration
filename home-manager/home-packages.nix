{ inputs, pkgs, ... }: {
  home.packages = with pkgs; [

    # Terminal stuff
    asciiquarium
    btop
    cava
    cmatrix
    lavat
    pipes
    tty-clock
    unimatrix
    inputs.areofyl-fetch.packages.${pkgs.stdenv.hostPlatform.system}.default

    # Files
    (nemo-with-extensions.override {
      extensions = with pkgs; [ nemo-seahorse ];
    })
    xarchiver
    udiskie

    # Browsers
    brave-origin
    librewolf
    tor-browser
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default

    # Messengers
    telegram-desktop
    vesktop

    # Work
    gimp
    onlyoffice-desktopeditors
    libreoffice
    vscodium
    vlc

    # Utilities
    bibata-cursors
    brightnessctl
    cacert
    ddcutil
    gpu-screen-recorder
    mpvpaper
    pciutils
    sshfs
    wget
    
    # Other
    keepassxc
    polkit
    system-config-printer

  ];
}