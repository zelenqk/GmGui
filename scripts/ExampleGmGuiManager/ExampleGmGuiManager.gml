//this is an example where you can make your own widgets/prefabs!

function ExampleGmGuiManager() : gmGui() constructor {
	
    ///@function window(label, id, widgets, [x], [y], [width], [height], [flags])
    ///@param {String} label
    ///@param {String} id
    ///@param {Function} widgets
    ///@param {Real} [x]
    ///@param {Real} [y]
    ///@param {Real} [width]
    ///@param {Real} [height]
    ///@param {Real} [flags=0]
    static window = function(_label, _id, _widgets, _x = undefined, _y = undefined, _width = undefined, _height = undefined, _flags = 0) {
        var widgets = _widgets ?? empty_function;

        // only apply an initial pos/size ONCE per window id, on first appearance —
        // after that, ImGui remembers wherever the user dragged/resized it to
        if (_x != undefined && _y != undefined)  set_next_window_pos(_x, _y, EImGui_Cond.FirstUseEver);
        if (_width != undefined && _height != undefined) set_next_window_size(_width, _height, EImGui_Cond.FirstUseEver);

        var ret = start(_label + "###" + _id, undefined, _flags);
        if (ret[0]) widgets();
        finish();
    }
	
    ///@function label(text)
    ///@param {String} text
	static label = function(_text){
		text(_text)
	}
}


function empty_function(){
	
}