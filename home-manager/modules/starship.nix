{
	programs.starship = {
		enable = true;

		settings = {
			"$schema" = "https://starship.rs/config-schema.json";
			palette = "noctalia";
			add_newline = true;
			format = "[◖](surface1)[█](surface1)$os$username[](bg:blue fg:surface1)$directory[](fg:blue bg:green)$git_branch$git_status[](fg:green) ";
			right_format = "[](fg:surface1)$status[](bg:surface1 fg:text)$kubernetes[](bg:surface1 fg:text)$time[](surface1)";
			os = {
				disabled = false;
				style = "bg:surface1 fg:text";
				symbols = {
					NixOS = "󱄅";
				};
			};
			username = {
				show_always = true;
				style_user = "bg:surface1 fg:text";
				style_root = "bg:surface1 fg:text";
				format = "[ $user ]($style)";
			};
			directory = {
				style = "fg:mantle bg:blue";
				format = "[ $path ]($style)";
				truncation_length = 10;
				truncation_symbol = "…/";
				truncate_to_repo = false;
			};
			git_branch = {
				symbol = "";
				style = "bg:teal";
				format = "[[ $symbol $branch ](fg:base bg:green)]($style)";
			};
			git_status = {
				style = "bg:teal";
				format = "[[($all_status$ahead_behind )](fg:base bg:green)]($style)";
			};
			status = {
				disabled = false;
				style = "bg:surface1";
				failure_style = "bg:surface1 fg:red";
				success_style = "bg:surface1 fg:green";
				success_symbol = "";
				symbol = "";
				not_executable_symbol = "";
				not_found_symbol = "";
				sigint_symbol = "";
				signal_symbol = "";
				format = "[ $symbol $status ]($style)";
			};
			kubernetes = {
				disabled = false;
				style = "bg:surface1 fg:text";
				format = "[ $symbol$context( \($namespace\) )]($style)";
			};
			time = {
				disabled = false;
				time_format = "%Y-%m-%d %H:%M:%S";
				style = "bg:blue";
				format = "[[  $time ](fg:text bg:surface1)]($style)";
			};
			palettes = {
				noctalia = {
					blue = "#b6c4ff";
					red = "#ffb4ab";
					green = "#5ed4fc";
					yellow = "#88d0ec";
					cyan = "#88d0ec";
					magenta = "#5ed4fc";
					white = "#e1e1ef";
					black = "#424659";
					rosewater = "#88d0ec";
					flamingo = "#ffb4ab";
					pink = "#5ed4fc";
					mauve = "#5ed4fc";
					maroon = "#ffb4ab";
					peach = "#88d0ec";
					teal = "#88d0ec";
					sky = "#88d0ec";
					sapphire = "#b6c4ff";
					lavender = "#5ed4fc";
					text = "#e1e1ef";
					subtext1 = "#e1e1ef";
					subtext0 = "#8c90a6";
					overlay2 = "#8c90a6";
					overlay1 = "#8c90a6";
					overlay0 = "#424659";
					surface2 = "#424659";
					surface1 = "#424659";
					surface0 = "#11131c";
					base = "#11131c";
					mantle = "#11131c";
					crust = "#11131c";
				};
			};
		};
	};
}