{ pkgs, user, ... }: {
  programs.zsh.enable = true;
  programs.umbriel.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;
    users.${user} = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" ];
    };
  };
}