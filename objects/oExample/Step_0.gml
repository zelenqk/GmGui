if (!imgui.ready()) exit;

var tx = 100;
var ty = 100;

var width = 500;
var height = 500;

imgui.window("Hello world!", "testWindow", function(){
	imgui.label("This is a label widget");
}, tx, ty, width, height, EImGui_WindowFlags.NoResize);