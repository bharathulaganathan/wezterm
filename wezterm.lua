local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.term = "wezterm"

config.color_scheme = 'Github Dark Default'
config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.tab_max_width = 37

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.default_prog = { 'wsl.exe', '-d', 'archlinux', '--cd', '~' }

config.launch_menu = {
  {
    label = 'WSL: Arch Linux',
    args = { 'wsl.exe', '-d', 'archlinux', '--cd', '~' },
  },
  {
    label = 'WSL: Debian',
    args = { 'wsl.exe', '-d', 'Debian', '--cd', '~' },
  },
  {
    label = 'Powershell',
    args = { 'powershell.exe', '-NoLogo' },
  },
}

config.font = wezterm.font_with_fallback {
  'JetBrains Mono',
  'Hack Nerd Font Mono',
  'Cascadia Mono'
}

return config
