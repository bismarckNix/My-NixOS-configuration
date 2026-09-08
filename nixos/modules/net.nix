{
  networking = {
    networkmanager.enable = true;

    firewall = {
      trustedInterfaces = [ "Mihomo" ];
      extraCommands = ''
        ip46tables -t mangle -I nixos-fw-rpfilter -i Mihomo -j RETURN
      '';
      extraReversePathFilterRules = ''iifname { "Mihomo" } accept comment "trusted interface"'';
    };
  };

  boot.kernel.sysctl."net.ipv4.ip_forward" = 1;
}