local wezterm = require("wezterm")
-- local gpus = wezterm.gui.enumerate_gpus()

local config = {
	show_close_tab_button_in_tabs = false,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	window_decorations = "INTEGRATED_BUTTONS|RESIZE",

	enable_scroll_bar = false,
	color_scheme = "Hardcore (base16)",

	-- Font settings
	font = wezterm.font("FiraCode Nerd Font", { weight = "Regular" }), -- font = wezterm.font("Cascadia Mono"),

	font_size = 11,

	window_close_confirmation = "NeverPrompt",
	scrollback_lines = 500,

	-- ////////////////////////////////

	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },

	keys = {
		{ key = "h", mods = "CTRL|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "|", mods = "CTRL|SHIFT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ key = "x", mods = "CTRL|SHIFT", action = wezterm.action.CloseCurrentPane({ confirm = true }) },
	},
}

-- Tab renaming function
wezterm.on("format-tab-title", function(tab)
	return " " .. tostring(tab.tab_index + 1) .. " "
end)

return config
