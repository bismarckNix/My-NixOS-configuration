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
    nemo
    nemo-fileroller
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
    wget
    
    # Other
    keepassxc
    polkit

  ];
}