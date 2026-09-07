{
	programs.umbriel.settings = {
		keybinds = {
			# General
			"Mod+O" = "overview-toggle";
			"Mod+Escape" = "overview-toggle";
			"Mod+Space" = "keyboard-layout-next";
			"Mod+Shift+Escape" = "session-quit";

			# Layout
			"Mod+Shift+T" = "workspace-set-layout:toggle";
			"Mod+Shift+Q" = "workspace-set-layout:scrolling";
			"Mod+Shift+W" = "workspace-set-layout:dwindle";
			"Mod+Shift+E" = "workspace-set-layout:master";
			"Mod+Alt+Space" = "scratchpad-toggle";
			"Mod+Shift+Space" = "window-move-to-scratchpad";
			"Mod+Ctrl+Space" = "window-restore-from-scratchpad";
			"Mod+Tab" = "scratchpad-focus-next";

			# Window actions
			"Mod+Q" = "window-close";
			"Mod+A" = "window-focus-left";
			"Mod+W" = "window-focus-up";
			"Mod+S" = "window-focus-down";
			"Mod+D" = "window-focus-right";
			"Mod+Ctrl+A" = "column-move-left";
			"Mod+Ctrl+W" = "window-move-up";
			"Mod+Ctrl+S" = "window-move-down";
			"Mod+Ctrl+D" = "column-move-right";
			"Mod+V" = "window-toggle-floating";
			"Mod+P" = "window-toggle-pinned";
			"Mod+C" = "column-center";
			"Mod+Ctrl+C" = "window-center";
			"Mod+Shift+Comma" = "window-consume-or-expel-left";
			"Mod+Shift+Period" = "window-consume-or-expel-right";

			# Window sizes
			"Mod+F" = "window-toggle-maximize";
			"Mod+M" = "window-toggle-maximize-to-edges";
			"Mod+Shift+F" = "window-toggle-fullscreen";
			"Mod+R" = "window-cycle-width";
			"Mod+Ctrl+R" = "window-cycle-width-back";
			"Mod+Minus" = "window-modify-width:-0.1";
			"Mod+Equal" = "window-modify-width:+0.1";
			"Mod+Shift+Minus" = "window-modify-height:-0.1";
			"Mod+Shift+Equal" = "window-modify-height:+0.1";

			# Workspaces
			"Mod+Comma" = "workspace-previous";
			"Mod+Period" = "workspace-next";
			"Mod+Ctrl+Comma" = "window-move-to-workspace-previous";
			"Mod+Ctrl+Period" = "window-move-to-workspace-next";
			"Mod+1" = "workspace-switch:1";
			"Mod+2" = "workspace-switch:2";
			"Mod+3" = "workspace-switch:3";
			"Mod+4" = "workspace-switch:4";
			"Mod+5" = "workspace-switch:5";
			"Mod+6" = "workspace-switch:6";
			"Mod+7" = "workspace-switch:7";
			"Mod+8" = "workspace-switch:8";
			"Mod+9" = "workspace-switch:9";
			"Mod+Ctrl+1" = "window-move-to-workspace:1";
			"Mod+Ctrl+2" = "window-move-to-workspace:2";
			"Mod+Ctrl+3" = "window-move-to-workspace:3";
			"Mod+Ctrl+4" = "window-move-to-workspace:4";
			"Mod+Ctrl+5" = "window-move-to-workspace:5";
			"Mod+Ctrl+6" = "window-move-to-workspace:6";
			"Mod+Ctrl+7" = "window-move-to-workspace:7";
			"Mod+Ctrl+8" = "window-move-to-workspace:8";
			"Mod+Ctrl+9" = "window-move-to-workspace:9";

			# Noctalia
			"Mod+Grave" = "spawn:noctalia msg panel-toggle launcher";
			"Alt+Tab" = "spawn:noctalia msg window-switcher";
			"Mod+Shift+A" = "spawn:noctalia msg screenshot-fullscreen";
			"Mod+Shift+S" = "spawn:noctalia msg screenshot-region";
			"Mod+Shift+L" = "spawn:noctalia msg session lock";
			"Mod+X" = "spawn:noctalia msg mic-mute";
			"Mod+Shift+Z" = "spawn:noctalia msg notification-dnd-toggle";
			"Mod+Shift+X" = "spawn:noctalia msg notification-clear-active";
			"Mod+Shift+G" = "spawn:noctalia msg panel-toggle clipboard";
			"Mod+Shift+R" = "spawn:noctalia msg plugin noctalia/screen_recorder:service all toggle";

			# Dev
			"Mod+Return" = "spawn:kitty";
			"Mod+Ctrl+F" = "spawn:nemo";
			"Mod+N" = "spawn:codium";

			# Proxy
			"Mod+Shift+V" = "spawn:clash-verge";
			"Mod+Ctrl+V" = "spawn:pkill clash-verge";

			# Browsers
			"Mod+E" = "spawn:firefox";
			"Mod+T" = "spawn:zen";
			"Mod+B" = "spawn:brave";

			# Media
			"Mod+Z" = "spawn:vesktop";
			"Mod+Alt+Z" = "spawn:discord";
			"Mod+Ctrl+T" = "spawn:Telegram";
			"Mod+Shift+C" = "spawn:pear-desktop";

			# Games
			"Mod+Y" = "spawn:steam";
			"Mod+G" = "spawn:freesmlauncher";
		};
	};
}