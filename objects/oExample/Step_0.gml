if (!imgui.ready()) exit;

var tx = 100;
var ty = 100;

var width = 500;
var height = 500;

imgui.window("Hello world!", "testWindow", function(){
	imgui.label("This is a label widget");
	imgui.label("Това е дранкулка");
	imgui.textbox("textbox", "textboxthingy", infinity, "default text");
	
	if (imgui.button("click me! МОЛЯ ТЕ! :sob: :sob:")) {
		
	}
	
}, tx, ty, width, height, EImGui_WindowFlags.NoResize);