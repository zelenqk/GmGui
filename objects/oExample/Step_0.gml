if (!imgui.ready()) exit;

var tx = 100;
var ty = 100;

var width = 900;
var height = 500;

imgui.window("Hello world!", "testWindow", function(){
	
	imgui.push_item_width(300);
	imgui.begin_group();
		imgui.label("This is a label widget");
		imgui.textbox("textbox ### thingy", "textboxthingy", infinity, "default text");

		imgui.button("click me! :sob: :sob:")
	imgui.end_group();
	imgui.same_line(0, 100);
	imgui.pop_item_width();

	imgui.begin_group();
		imgui.set_window_font_scale(4);
		imgui.label("Credits");
		imgui.set_window_font_scale(2);

		imgui.label("rousr");
		imgui.label("pleaseandthankyou");
		imgui.label("net8floz");
		imgui.label("rabblerouser");
		
		imgui.set_window_font_scale(3);
		imgui.sprite(pixel_heart_2779422_1280, 0, 64, 64);
		imgui.same_line();
		imgui.label("Made with love");
		imgui.set_window_font_scale(1);

	imgui.end_group();


	
}, tx, ty, width, height);