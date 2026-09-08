{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    oh-my-zsh.enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ff = "fastfetch";
      clr = "clear && fastfetch";
      fl = " cd ~/nix-config";

      sw = "nh os switch .";
      upd = "nh os switch --update .";
      hms = "nh home switch .";

      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gp = "git push";

      ".." = "cd ..";
    };

    history.size = 10000;
    history.path = "${config.home.homeDirectory}/.zsh_history";

    initContent = ''
      fastfetch
    '';
  };
}