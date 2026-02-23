local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.term = "wezterm"

config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.tab_max_width = 37

-- https://wezterm.org/config/appearance.html#defining-your-own-colors
config.color_scheme = 'Github Dark'
config.colors = {

  -- foreground = 'silver',   -- The default text color
  -- background = 'black',   -- The default background color

  cursor_bg = '#b7bdc8',   -- Overrides the cell background color when the current cell is occupied by the cursor and the cursor style is set to Block
  cursor_fg = 'black',   -- Overrides the text color when the current cell is occupied by the cursor
  cursor_border = '#b7bdc8',   -- Specifies the border color of the cursor when the cursor style is set to Block, or the color of the vertical or horizontal bar when the cursor style is set to Bar or Underline.

  selection_fg = 'black',   -- the foreground color of selected text
  selection_bg = '#fffacd',   -- the background color of selected text

  scrollbar_thumb = '#222222',   -- The color of the scrollbar "thumb"; the portion that represents the current viewport


  split = '#444444',   -- The color of the split lines between panes


  ansi = {
    '#0d1117', -- 'black' base-color-neutral-1
    '#ff7b72', -- 'maroon' base-color-red-3
    '#3fb950', -- 'green' base-color-green-3
    '#d29922', -- 'olive' base-color-yellow-3
    '#58a6ff', -- 'navy' base-color-blue-3
    '#be8fff', -- 'purple' base-color-purple-3
    '#f778ba', -- 'teal' base-color-pink-3
    '#9198a1', -- 'silver' base-color-neutral-9
  },
  brights = {
    '#262c36', -- 'grey' base-color-neutral-4
    '#ffa198', -- 'red' base-color-red-2
    '#56d364', -- 'lime' base-color-green-2
    '#e3b341', -- 'yellow' base-color-yellow-2
    '#79c0ff', -- 'blue' base-color-blue-2
    '#d2a8ff', -- 'fuchsia' base-color-purple-2
    '#ff9bce', -- 'aqua' base-color-pink-2
    '#f0f6fc', -- 'white' base-color-neutral-12
  },

  indexed = { [136] = '#af8700' },   -- Arbitrary colors of the palette in the range from 16 to 255


  -- Since: 20220319-142410-0fcdea07
  compose_cursor = 'orange',   -- When the IME, a dead key or a leader key are being processed and are effectively holding input pending the result of input composition, change the cursor to this color to give a visual cue about the compose state.

  -- Colors for copy_mode and quick_select
  -- available since: 20220807-113146-c2fee766
  copy_mode_active_highlight_bg = { Color = '#000000' },   -- In copy_mode, the color of the active text is, copy_mode_active_highlight_* if additional text was selected using the mouse, selection_* otherwise
  copy_mode_active_highlight_fg = { AnsiColor = 'Black' },   -- use `AnsiColor` to specify one of the ansi color palette values (index 0-15) using one of the names "Black", "Maroon", "", "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime", "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
  copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
  copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },

  quick_select_label_bg = { Color = 'peru' },
  quick_select_label_fg = { Color = '#ffffff' },
  quick_select_match_bg = { AnsiColor = 'Navy' },
  quick_select_match_fg = { Color = '#ffffff' },

  -- (*Since: Nightly Builds Only*)
  -- input_selector_label_bg = { AnsiColor = 'Black' },
  -- input_selector_label_fg = { Color = '#ffffff' },
  -- launcher_label_bg = { AnsiColor = 'Black' },
  -- launcher_label_fg = { Color = '#ffffff' },
}

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

-- font size
-- default is 12
-- 14 is also fine
config.font_size = 15 

return config
