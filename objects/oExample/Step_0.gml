if (!imgui.ready()) exit;

imgui.start();
	imgui.push_item_width(400);
	imgui.begin_group();
		imgui.text("Inputs");
		
		imgui.checkbox("Checkbox for boo!...leans");
		imgui.button("Button");
		
		imgui.input_text("text input", "", 1000);
		imgui.input_text_multiline("multiline input", "", 1000, 400, 200);
		imgui.input_int("integer input", "", 1000, 300, 200);
		imgui.input_int4("4 integer inputs!", "", 1000, 300, 200);
		imgui.input_float("float input");
	imgui.end_group();
	
	imgui.same_line();
	
	imgui.begin_group();
		imgui.text("Draw list stuff");
		imgui.checkbox("Checkbox for boo!...leans");
	imgui.end_group();
	
	imgui.pop_item_width();
imgui.finish();