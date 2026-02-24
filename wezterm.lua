local wezterm = require 'wezterm'


local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.term = "wezterm"

config.font_size = 15 -- default 12 -- 14 is also fine

config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.tab_max_width = 37

config.color_scheme = 'Github Dark'

local github_palette = require 'github_theme_palette.github_palette'
local github_dark = github_palette.dark

config.colors = {

  foreground = github_dark.fg,   -- The default text color
  background = github_dark.bg,   -- The default background color

  cursor_bg = github_dark.fg,   -- Overrides the cell background color when the current cell is occupied by the cursor and the cursor style is set to Block
  cursor_fg = github_dark.bg,   -- Overrides the text color when the current cell is occupied by the cursor
  cursor_border = github_dark.fg,   -- Specifies the border color of the cursor when the cursor style is set to Block, or the color of the vertical or horizontal bar when the cursor style is set to Bar or Underline.

  selection_fg = github_dark.ansi.white,   -- the foreground color of selected text
  selection_bg = github_dark.ansi.black,   -- the background color of selected text

  -- scrollbar_thumb = '#222222',   -- The color of the scrollbar "thumb"; the portion that represents the current viewport


  -- split = '#444444',   -- The color of the split lines between panes


  ansi = {
    github_dark.ansi.black, -- 'black' base-color-neutral-6
    github_dark.ansi.red, -- 'maroon' base-color-red-3
    github_dark.ansi.green, -- 'green' base-color-green-3
    github_dark.ansi.yellow, -- 'olive' base-color-yellow-3
    github_dark.ansi.blue, -- 'navy' base-color-blue-3
    github_dark.ansi.purple, -- 'purple' base-color-purple-3
    github_dark.ansi.pink, -- 'teal' base-color-pink-3
    github_dark.ansi.white, -- 'silver' base-color-neutral-12
  },
  brights = {
    github_dark.bright.black, -- 'grey' base-color-neutral-8
    github_dark.bright.red, -- 'red' base-color-red-2
    github_dark.bright.green, -- 'lime' base-color-green-2
    github_dark.bright.yellow, -- 'yellow' base-color-yellow-2
    github_dark.bright.blue, -- 'blue' base-color-blue-2
    github_dark.bright.purple, -- 'fuchsia' base-color-purple-2
    github_dark.bright.pink, -- 'aqua' base-color-pink-2
    github_dark.bright.white, -- 'white' base-color-neutral-13
  },

  -- indexed = { [136] = '#af8700' },   -- Arbitrary colors of the palette in the range from 16 to 255


  -- compose_cursor = 'orange',   -- When the IME, a dead key or a leader key are being processed and are effectively holding input pending the result of input composition, change the cursor to this color to give a visual cue about the compose state.
  --
  -- -- Colors for copy_mode and quick_select
  -- copy_mode_active_highlight_bg = { Color = '#000000' },   -- In copy_mode, the color of the active text is, copy_mode_active_highlight_* if additional text was selected using the mouse, selection_* otherwise
  -- copy_mode_active_highlight_fg = { AnsiColor = 'Black' },   -- use `AnsiColor` to specify one of the ansi color palette values (index 0-15) using one of the names "Black", "Maroon", "", "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime", "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
  -- copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
  -- copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },
  --
  -- quick_select_label_bg = { Color = 'peru' },
  -- quick_select_label_fg = { Color = '#ffffff' },
  -- quick_select_match_bg = { AnsiColor = 'Navy' },
  -- quick_select_match_fg = { Color = '#ffffff' },

  -- -- (*Since: Nightly Builds Only*)
  -- input_selector_label_bg = { AnsiColor = 'Black' },
  -- input_selector_label_fg = { Color = '#ffffff' },
  -- launcher_label_bg = { AnsiColor = 'Black' },
  -- launcher_label_fg = { Color = '#ffffff' },

  tab_bar = {
    background = github_dark.bg,

    active_tab = {
      bg_color = github_dark.bg,
      fg_color = github_dark.fg,

      intensity = 'Bold', -- "Half", "Normal" or "Bold"

      underline = 'None', -- "None", "Single" or "Double"
      italic = false,
      strikethrough = false,
    },

    inactive_tab = {
      bg_color = github_dark.ansi.black,
      fg_color = github_dark.ansi.white,

      intensity = 'Normal', -- "Half", "Normal" or "Bold"

      underline = 'None', -- "None", "Single" or "Double"
      italic = true,
      strikethrough = false,
    },

    inactive_tab_hover = {
      bg_color = github_dark.bright.black,
      fg_color = github_dark.bright.white,

      intensity = 'Bold', -- "Half", "Normal" or "Bold"

      underline = 'None', -- "None", "Single" or "Double"
      italic = false,
      strikethrough = false,
    },

    new_tab = {
      bg_color = github_dark.bg,
      fg_color = github_dark.fg,

      intensity = 'Normal', -- "Half", "Normal" or "Bold"

      underline = 'None', -- "None", "Single" or "Double"
      italic = true,
      strikethrough = false,
    },

    new_tab_hover = {
      bg_color = github_dark.bright.black,
      fg_color = github_dark.bright.white,

      intensity = 'Bold', -- "Half", "Normal" or "Bold"

      underline = 'None', -- "None", "Single" or "Double"
      italic = false,
      strikethrough = false,
    },
  },
}

-- config.enable_scroll_bar = true

config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 5,
}

config.window_content_alignment = {
    horizontal = 'Center',
    vertical = 'Center'
}

config.default_prog = { 'wsl.exe', '-d', 'archlinux', '--cd', '~' }

config.launch_menu = {
  {
    label = 'WSL: Arch Linux',
    args = { 'wsl.exe', '-d', 'archlinux', '--cd', '~' },
  },
  {
    label = 'Powershell',
    args = { 'powershell.exe', '-NoLogo' },
  },
  {
    label = 'WSL: Debian',
    args = { 'wsl.exe', '-d', 'Debian', '--cd', '~' },
  },
}

config.font = wezterm.font_with_fallback {
  'JetBrains Mono',
  'Hack Nerd Font Mono',
  'Cascadia Mono'
}

return config
