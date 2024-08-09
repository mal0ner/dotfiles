local wezterm = require("wezterm")

local fonts = {
	iosekva = wezterm.font("Iosevka Nerd Font", { weight = "Medium" }),
	input = wezterm.font_with_fallback({
		"Input Mono Compressed",
		{ family = "Symbols Nerd Font Mono", scale = 0.85 },
	}),
	jetbrains = wezterm.font("JetBrainsMono Nerd Font"),
	proto = wezterm.font("0xProto Nerd Font"),
}

local schemes = {
	grayscale = "Grayscale (dark) (terminal.sexy)",
	gruvbox_dark = "Gruvbox dark, hard (base16)",
	gruvbox_material = "Gruvbox Material (Gogh)",
	tokyonight_night = "tokyonight_night",
	zenbones_dark = "zenbones_dark",
	sequoia = "Sequoia Monochrome",
	neobones = "neobones_dark",
	poimandres = "Poimandres",
	zenbones = "zenbones",
	miasma = "miasma",
}

local config = {}

config.font_size = 18
config.color_scheme = "Gruvbox dark, hard (base16)"
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.window_padding = {
	bottom = 16,
	right = 18,
	left = 18,
	top = 16,
}

config.font = fonts.proto

config.enable_kitty_graphics = true
return config
