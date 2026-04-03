local wezterm = require("wezterm")
local act = wezterm.action

return {
	-- Window appearance
	window_decorations = "RESIZE", -- hides the title bar buttons
	window_background_opacity = 0.70, -- semi-transparent background
	macos_window_background_blur = 40, -- frosted glass effect
	hide_tab_bar_if_only_one_tab = true, -- hides tab bar when not needed
	tab_bar_at_bottom = true, -- moves the tab bar to the bottom of the window
	-- Font and theme
	font = wezterm.font("Fira Code"),
	font_size = 14.0,
	color_scheme = "Catppuccin Mocha",

	-- Initial window size and position
	initial_cols = 170,
	initial_rows = 50,

	window_frame = {
		active_titlebar_bg = "rgba(0, 0, 0, 0)",
		inactive_titlebar_bg = "rgba(0, 0, 0, 0)",
	},

	-- Keybindings
	keys = {
		{ key = "d", mods = "CMD", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "d", mods = "CMD|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ key = "h", mods = "CMD", action = act.ActivatePaneDirection("Left") },
		{ key = "l", mods = "CMD", action = act.ActivatePaneDirection("Right") },
		{ key = "k", mods = "CMD", action = act.ActivatePaneDirection("Up") },
		{ key = "j", mods = "CMD", action = act.ActivatePaneDirection("Down") },
		{ key = "H", mods = "CMD|SHIFT", action = act.AdjustPaneSize({ "Left", 5 }) },
		{ key = "L", mods = "CMD|SHIFT", action = act.AdjustPaneSize({ "Right", 5 }) },
		{ key = "K", mods = "CMD|SHIFT", action = act.AdjustPaneSize({ "Up", 5 }) },
		{ key = "J", mods = "CMD|SHIFT", action = act.AdjustPaneSize({ "Down", 5 }) },
		{ key = "w", mods = "CMD", action = act.CloseCurrentPane({ confirm = false }) },
	},

	colors = {
		tab_bar = {
			active_tab = {
				bg_color = "#1A1826",
				fg_color = "#BAC2DE",
			},
			inactive_tab = {
				bg_color = "#45475A",
				fg_color = "#F5E0DC",
			},
		},
	},
}
