{ inputs, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    steam
    inputs.freesmlauncher.packages.${pkgs.stdenv.hostPlatform.system}.default   
  ];
}