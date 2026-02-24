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

local github_dark = require 'github_dark'

config.colors = {

  foreground = github_dark.text,   -- The default text color
  background = github_dark.neutral[2],   -- The default background color

  cursor_bg = github_dark.neutral[13],   -- Overrides the cell background color when the current cell is occupied by the cursor and the cursor style is set to Block
  cursor_fg = github_dark.neutral[2],   -- Overrides the text color when the current cell is occupied by the cursor
  cursor_border = github_dark.neutral[13],   -- Specifies the border color of the cursor when the cursor style is set to Block, or the color of the vertical or horizontal bar when the cursor style is set to Bar or Underline.

  selection_fg = github_dark.neutral[13],   -- the foreground color of selected text
  selection_bg = github_dark.neutral[7],   -- the background color of selected text

  -- scrollbar_thumb = '#222222',   -- The color of the scrollbar "thumb"; the portion that represents the current viewport


  -- split = '#444444',   -- The color of the split lines between panes


  ansi = {
    github_dark.neutral[7], -- 'black' base-color-neutral-6
    github_dark.red[4], -- 'maroon' base-color-red-3
    github_dark.green[4], -- 'green' base-color-green-3
    github_dark.yellow[4], -- 'olive' base-color-yellow-3
    github_dark.blue[4], -- 'navy' base-color-blue-3
    github_dark.purple[4], -- 'purple' base-color-purple-3
    github_dark.pink[4], -- 'teal' base-color-pink-3
    github_dark.neutral[13], -- 'silver' base-color-neutral-12
  },
  brights = {
    github_dark.neutral[9], -- 'grey' base-color-neutral-8
    github_dark.red[3], -- 'red' base-color-red-2
    github_dark.green[3], -- 'lime' base-color-green-2
    github_dark.yellow[3], -- 'yellow' base-color-yellow-2
    github_dark.blue[3], -- 'blue' base-color-blue-2
    github_dark.purple[3], -- 'fuchsia' base-color-purple-2
    github_dark.pink[3], -- 'aqua' base-color-pink-2
    github_dark.neutral[14], -- 'white' base-color-neutral-13
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
    background = github_dark.neutral[2],

    active_tab = {
      bg_color = github_dark.neutral[2],
      fg_color = github_dark.text,

      intensity = 'Bold', -- "Half", "Normal" or "Bold"

      underline = 'None', -- "None", "Single" or "Double"
      italic = false,
      strikethrough = false,
    },

    inactive_tab = {
      bg_color = github_dark.neutral[7],
      fg_color = github_dark.neutral[13],

      intensity = 'Normal', -- "Half", "Normal" or "Bold"

      underline = 'None', -- "None", "Single" or "Double"
      italic = true,
      strikethrough = false,
    },

    inactive_tab_hover = {
      bg_color = github_dark.neutral[9],
      fg_color = github_dark.neutral[14],

      intensity = 'Bold', -- "Half", "Normal" or "Bold"

      underline = 'None', -- "None", "Single" or "Double"
      italic = false,
      strikethrough = false,
    },

    new_tab = {
      bg_color = github_dark.neutral[2],
      fg_color = github_dark.text,

      intensity = 'Normal', -- "Half", "Normal" or "Bold"

      underline = 'None', -- "None", "Single" or "Double"
      italic = true,
      strikethrough = false,
    },

    new_tab_hover = {
      bg_color = github_dark.neutral[9],
      fg_color = github_dark.neutral[14],

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
