# gmGui

This project is a fork of [rousr's ImGui extension](https://rousr.itch.io/imguigml), and it wouldn't have been possible without it.

### Introduction

[Dear ImGui](https://github.com/ocornut/imgui) is a popular library for immediate-mode GUI, and the original ImGuiGML is a wrapper that exposes ImGui's functions to GameMaker through a GameMaker object and a large set of global `imguigml_*` functions.

> For a more modern version of Dear ImGui you could checkout this project https://github.com/nommiin/ImGui_GM which uses ImGui v1.92.8 (as of the time of writing this) while GmGui is still on ImGui 1.100.4

**gmGui** is a modernized rewrite of that wrapper's GML side. Instead of a persistent GameMaker object and hundreds of global functions, the entire API is exposed through a single struct with chainable, namespaced methods:

```gml
// Create event
imgui = new gmGui();
```

```gml
// Begin Step event
imgui.update();
```

```gml
// Draw GUI event
if (imgui.ready()) {
    imgui.start("My Window");
        imgui.text("Hello, world!");
    imgui.finish();
}
imgui.render();
```

```gml
// Clean Up event
imgui.destroy();
```

The underlying DLL and rendering pipeline are unchanged this is a GML-side ergonomics rewrite, not a new ImGui backend.

### Installation

1. Download the latest release.
2. Import it as a local package into your GameMaker project.

### Compatibility

This fork only changes the GML side API, it doesn't touch the underlying DLL. The original [rousr ImGuiGML extension](https://rousr.itch.io/imguigml) is advertised as compatible with Windows, Ubuntu, and macOS out of the box. 
Since gmGui sits entirely on top of the same DLL, the same platform support should carry over, but it hasn't been independently verified on all three platforms for this fork specifically.

This fork doesn't maintain or modify the underlying DLL, so any platform-specific issues at that layer would not be processed by this project.
### Documentation

When in doubt, check the [wiki](https://github.com/zelenqk/GmGui/wiki) it covers initialization and lifecycle methods, window flags, and a walkthrough for your first window.
