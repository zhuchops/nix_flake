-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

local theme = wezterm.plugin.require('https://github.com/neapsix/wezterm').main


-- This is where you actually apply your config choices

config.leader = { key = "Space", mods = "CTRL", timeout_milliseconds = 1000 }

config.font = wezterm.font("JetBrainsMono Nerd Font Propo")

config.colors = theme.colors()

config.window_background_opacity = 0.95

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.enable_tab_bar = false

config.max_fps = 144

-- and finally, return the configuration to wezterm
return config
