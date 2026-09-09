{
  programs.fastfetch ={
    enable = true;
    
    settings = {
      "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
      logo = {
        padding = {
          top = 1;
          left = 2;
          right = 3;
          down = 55;
        };
      };
      display = {
        separator = " ";
      };
      modules = [
        "break"
        {
          type = "title";
        }
        {
          type = "custom";
          format = "{#blue}╭──╮";
        }
        {
          type = "os";
          key = "│ │";
          keyColor = "34";
        }
        {
          type = "kernel";
          key = "│ │";
          keyColor = "34";
        }
        {
          type = "packages";
          format = "{nix-system} (system), {nix-user} (user)";
          key = "│ │";
          keyColor = "34";
        }
        {
          type = "shell";
          key = "│ │";
          keyColor = "34";
        }
        {
          type = "terminal";
          key = "│ │";
          keyColor = "34";
        }
        {
          type = "wm";
          key = "│ │";
          keyColor = "34";
        }
        {
          type = "disk";
          format = "{} / {}";
          key = "│ │";
          keyColor = "34";
        }
        {
          type = "memory";
          key = "│ │";
          format = "{used} / {total}";
          keyColor = "34";
        }
        {
          type = "swap";
          key = "│󰓡 │";
          format = "{used} / {total}";
          keyColor = "34";
        }
        {
          type = "uptime";
          key = "│ │";
          keyColor = "34";
        }
        {
          type = "custom";
          format = "{#blue}╰──╯";
        }
        "break"
        "break"
        {
          type = "custom";
          key = "  ";
          format = "{#37}󰮯 {#37} • {#37}• {#37}• {#31} 󰊠 {#32} 󰊠 {#33} 󰊠 {#34} 󰊠 {#35} 󰊠 {#36} 󰊠 ";
        }
      ];
    };
  };
}