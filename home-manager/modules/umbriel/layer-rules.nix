{
	programs.umbriel.settings = {
	layer_rule = [ {
		match = {
			namespace = "^noctalia-(dock|panel|attached-panel)$";
		};
		blur = true;
		blur_ignore_alpha = 0.5;
		blur_optimized = true;
	} {
		match = {
			namespace = "^noctalia-(notification|osd)$";
		};
		blur = true;
		blur_ignore_alpha = 0.8;
		blur_optimized = true;
	} ];
	};
}