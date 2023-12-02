local wezterm = require("wezterm")

local config = {}

config.font_size = 20
-- config.color_scheme = "Sequoia Monochrome"
config.color_scheme = "duckbones"

config.window_background_opacity = 1.0
config.macos_window_background_blur = 20
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.window_padding = {
	bottom = 16,
	right = 18,
	left = 18,
	top = 16,
}

-- config.font = wezterm.font("FantasqueSansMono Nerd Font")
-- config.font_shaper = "Harfbuzz"
-- config.harfbuzz_features = {
-- 	"ss01",
-- 	"ss02",
-- 	"ss03",
-- 	"ss04",
-- 	"ss06",
-- 	"ss07",
-- 	"ss08",
-- 	"calt",
-- }
-- config.font = wezterm.font("MonaspaceXenon Nerd Font")
-- config.allow_square_glyphs_to_overflow_width = "Never"
config.font = wezterm.font("Iosevka Nerd Font", { weight = "Medium" })
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
