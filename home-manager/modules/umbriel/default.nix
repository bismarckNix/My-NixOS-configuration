{
  imports = [
    ./animations.nix
    ./appearance.nix
    ./general.nix
    ./input.nix
    ./keybinds.nix
    ./layer-rules.nix
    ./layout.nix
    ./output.nix
    ./window-rules.nix
  ];

  programs.umbriel = {
    enable = true;
    settings = {
      include = {
				files = [
					"noctalia.toml"
				];
			};
    };
  };
}