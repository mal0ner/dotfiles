local wezterm = require("wezterm")

local config = {}

config.font_size = 19
-- config.color_scheme = "Miasma"
config.color_scheme = "Gruvbox Material (Gogh)"
config.color_scheme = "terafox"
config.color_scheme = "zenbones"
-- config.color_scheme = "tokyonight_night"
-- config.color_scheme = "Sequoia Monochrome"
-- config.color_scheme = "Grayscale (dark) (terminal.sexy)"
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.window_padding = {
	bottom = 16,
	right = 18,
	left = 18,
	top = 16,
}

-- config.font = wezterm.font("Iosevka Nerd Font", { weight = "Medium" })
-- config.font = wezterm.font("Input Mono Compressed")
config.font = wezterm.font_with_fallback({
	"Input Mono Compressed",
	{ family = "Symbols Nerd Font Mono", scale = 0.75 },
})

config.enable_kitty_graphics = true
return config
