if (!imgui.ready()) exit;

imgui.start();
	imgui.text("Hello Worlds");
	imgui.input_text_multiline("lol", "", 1000, 300, 200);
imgui.finish();