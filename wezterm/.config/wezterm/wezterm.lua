local wezterm = require("wezterm")

local config = {}

config.font_size = 18
-- config.color_scheme = "Everforest Dark (Gogh)"
-- config.color_scheme = "Nature Suede (terminal.sexy)"
config.color_scheme = "Banana Blueberry"
-- config.color_scheme = "Retro"
-- config.color_scheme = "rose-pine"
-- config.color_scheme = "Sequoia Monochrome"
config.window_background_opacity = 0.95
config.macos_window_background_blur = 20
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.window_padding = {
	left = 15,
}

-- config.font = wezterm.font("Iosevka Nerd Font")
config.font = wezterm.font("CaskaydiaCove Nerd Font")
-- config.font = wezterm.font("VictorMono Nerd Font", { weight = "Medium" })
-- config.font = wezterm.font("GohuFont 11 Nerd Font")
return config
