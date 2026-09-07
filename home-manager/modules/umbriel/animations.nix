{
	programs.umbriel.settings = {
		animation = {
			enabled = true;
			duration_ms = 150;
			curve = "easeout";
			windows_in = {
				enabled = true;
				duration_ms = 200;
				curve = "easeout";
				style = "none";
				shader = "shaders/roll-drop.glsl";
			};
			windows_out = {
				enabled = true;
				duration_ms = 150;
				curve = "easeout";
				style = "slide";
			};
			windows_move = {
				enabled = true;
				duration_ms = 150;
				curve = "snappy";
				shader = "shaders/squash.glsl";
			};
			workspaces = {
				enabled = true;
				duration_ms = 150;
				curve = "easeout";
			};
			overview = {
				enabled = true;
				duration_ms = 150;
				curve = "easeout";
			};
			scratchpad = {
				enabled = false;
				duration_ms = 150;
				curve = "easeout";
				dim = 0.5;
				blur = false;
				scale = 0.0;
				maximize = false;
				fullscreen = false;
			};
			border = {
				enabled = true;
				duration_ms = 150;
				curve = "easeout";
			};
			dim_unfocused = {
				enabled = false;
				duration_ms = 250;
				curve = "easeout";
				dim = 0.0;
			};
			layers = {
				enabled = false;
				duration_ms = 250;
				curve = "easeout";
			};
		};
	};
}