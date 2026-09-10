{ user, ... }: {
  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 5d --keep 10";
    flake = "/home/${user}/nix-config";
  };
}