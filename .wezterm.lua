-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = "rose-pine-moon"
config.colors = {}
config.colors.background = "#111111"
config.enable_wayland = true

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "rose-pine"

config.window_padding = {
	left = "0cell",
	right = "0cell",
	top = "0.5cell",
	bottom = "0cell",
}

config.font_size = 11
config.font = wezterm.font("JetBrainsMonoNL Nerd Font Mono")

config.window_decorations = "NONE" -- "NONE | RESIZE"

-- tab bar
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

-- ssh domains
config.ssh_domains = {
	{
		name = "koyeb",
		remote_address = "alexis.koyeb",
		username = "alexis",
	},
	{
		name = "sadzeih.com",
		remote_address = "sadzeih.com",
		username = "debian",
	},
}

-- Leader is the same as my old tmux prefix
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	-- splitting
	{
		mods = "LEADER",
		key = "v",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER",
		key = "h",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	-- closing pane
	{
		key = "x",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
	-- maximize pane
	{
		key = "m",
		mods = "LEADER",
		action = wezterm.action.TogglePaneZoomState,
	},
	-- copy mode
	{
		key = "[",
		mods = "LEADER",
		action = wezterm.action.ActivateCopyMode,
	},
	-- moving through panes
	{
		key = "DownArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "UpArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "LeftArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "RightArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	-- windows
	{ key = "p", mods = "LEADER", action = wezterm.action.ActivateTabRelativeNoWrap(-1) },
	{ key = "n", mods = "LEADER", action = wezterm.action.ActivateTabRelativeNoWrap(1) },
	{ key = "c", mods = "LEADER", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
	{ key = "1", mods = "LEADER", action = wezterm.action({ ActivateTab = 0 }) },
	{ key = "2", mods = "LEADER", action = wezterm.action({ ActivateTab = 1 }) },
	{ key = "3", mods = "LEADER", action = wezterm.action({ ActivateTab = 2 }) },
	{ key = "4", mods = "LEADER", action = wezterm.action({ ActivateTab = 3 }) },
	{ key = "5", mods = "LEADER", action = wezterm.action({ ActivateTab = 4 }) },
	{ key = "6", mods = "LEADER", action = wezterm.action({ ActivateTab = 5 }) },
	{ key = "7", mods = "LEADER", action = wezterm.action({ ActivateTab = 6 }) },
	{ key = "8", mods = "LEADER", action = wezterm.action({ ActivateTab = 7 }) },
	{ key = "9", mods = "LEADER", action = wezterm.action({ ActivateTab = 8 }) },
	-- move windows
	{ key = "LeftArrow", mods = "LEADER", action = wezterm.action.MoveTabRelative(-1) },
	{ key = "RightArrow", mods = "LEADER", action = wezterm.action.MoveTabRelative(1) },
	-- rename window
	{
		key = "R",
		mods = "LEADER",
		action = wezterm.action.PromptInputLine({
			description = "Enter new name for tab",
			action = wezterm.action_callback(function(window, pane, line)
				-- line will be `nil` if they hit escape without entering anything
				-- An empty string if they just hit enter
				-- Or the actual line of text they wrote
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
}

-- and finally, return the configuration to wezterm
return config
