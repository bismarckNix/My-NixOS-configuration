{ inputs, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    inputs.freesmlauncher.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.mocktail.packages.${pkgs.stdenv.hostPlatform.system}.default
    android-tools
    universal-android-debloater
  ];
}