local wezterm = require("wezterm")

local config = {}

config.font_size = 20
config.color_scheme = "Sequoia Monochrome"

config.window_background_opacity = 1.0
config.macos_window_background_blur = 20
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
-- config.window_padding = {
-- 	left = 15,
-- }
config.window_padding = {
	bottom = 16,
	right = 18,
	left = 18,
	top = 16,
}

-- config.font = wezterm.font("PragmataPro Nerd Font")
-- config.font = wezterm.font("GoMono Nerd Font")
-- config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font = wezterm.font("VictorMono Nerd Font", { weight = "Medium" })
config.font = wezterm.font("FantasqueSansMono Nerd Font")
-- config.font = wezterm.font("Iosevka Nerd Font")
-- config.font_rules = {
-- 	{
-- 		-- use unpatched PragmataPro for italics
-- 		italic = true,
-- 		font = wezterm.font({
-- 			family = "PragmataPro",
-- 			style = "Italic",
-- 			italic = true,
-- 		}),
-- 	},
-- }
return config
