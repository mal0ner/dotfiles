local wezterm = require("wezterm")
local config = {}

-- color, font, background
config.color_scheme = "rose-pine"
-- config.font = wezterm.font("CaskaydiaCove Nerd Font")
config.font = wezterm.font("MapleMono Nerd Font")
config.font_size = 17
config.window_background_opacity = 0.95

-- key bindings

-- dim inactive panes slightly
config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

return config
