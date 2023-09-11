local wezterm = require("wezterm")

local config = {}

config.font_size = 20
config.color_scheme = "Sequoia Monochrome"

config.window_background_opacity = 1.0
config.macos_window_background_blur = 20
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.window_padding = {
	left = 15,
}

config.font = wezterm.font("PragmataPro Nerd Font")
config.font_rules = {
	{
		-- use unpatched PragmataPro for italics
		italic = true,
		font = wezterm.font({
			family = "PragmataPro",
			style = "Italic",
			italic = true,
		}),
	},
}
return config
