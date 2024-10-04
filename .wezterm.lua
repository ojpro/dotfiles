-- import wezterm API
local wezterm = require('wezterm')

-- This will hold the configuration
local config = wezterm.config_builder()

-- font
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 14

-- Disable tabs bar
config.enable_tab_bar = false

-- Hide System Window Decoration
config.window_decorations = "RESIZE"

-- Change opacity
config.window_background_opacity = 0.9


-- Change Color Scheme
config.color_scheme = 'Argonaut'

-- window padding
config.window_padding = {
  left = '0.5cell',
  right = '0.2cell',
  top = '0.3cell',
  bottom = '0',
}


-- Auto Start Programs
config.default_prog = { "tmux" }

return config
