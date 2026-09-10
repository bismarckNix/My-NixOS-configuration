{
	programs.umbriel.settings = {
		window_rule = [ {
			blur = true;
			blur_optimized = true;
		} {
			match = {
				app_id = "^discord$|^vesktop$|^codium$|^firefox$|^brave-browser$|^brave-origin$|zen|^librewolf$|^com.github.th_ch.youtube_music$|com.github.th-ch.youtube-music|steam";
			};
			default_width = 1.0;
			default_height = 1.0;
		} {
			match = {
				app_id = "Minecraft*|^org.vinegarhq.Sober$";
			};
			default_maximize_to_edges = true;
		} {
			match = {
				app_id = "^nemo$|^xarchiver$";
			};
			opacity = 0.9;
			blur = true;
			blur_optimized = true;
		} {
			match = {
				app_id = "^zen$";
			};
			opacity = 0.999;
			blur = true;
			blur_optimized = true;
		} {
			match = {
				app_id = "zen";
				title = "^Picture-in-Picture$";
			};
			default_floating = true;
			default_focused = false;
			focus_on_activate = true;
			default_width = 0.4;
			default_height = 0.413;
			default_position = {
				x = 20;
				y = 20;
				anchor = "bottom_right";
			};
		} {
			match = {
				app_id = "^dev.noctalia.Noctalia$";
			};
			default_floating = true;
			default_size = [ 1020 900 ];
		} {
			match = {
				app_id = "^dev.noctalia.UmbrielSharePicker$";
			};
			default_floating = true;
			default_size = [ 800 600 ];
		} ];
	};
}