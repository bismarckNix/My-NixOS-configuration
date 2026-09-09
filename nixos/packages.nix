{ inputs, pkgs, ... }: {
  imports = [ inputs.umbriel.nixosModules.default ];

  programs = {
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
    };

    umbriel.enable = true;
  };
}