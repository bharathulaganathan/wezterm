local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.term = "wezterm"

local github_colours = {
    text    = '#e6edf3',
    cursor  = { '#6fc1ff', '#2f81f7' },
    neutral = { '#010409', '#0d1117', '#151b23', '#212830', '#262c36', '#2a313c', '#2f3742', '#3d444d', '#656c76', '#9198a1', '#b7bdc8', '#d1d7e0', '#f0f6fc', '#ffffff' },
    blue    = { '#cae8ff', '#a5d6ff', '#79c0ff', '#58a6ff', '#388bfd', '#1f6feb', '#1158c7', '#0d419d', '#0c2d6b', '#051d4d'},
    green   = { '#aff5b4', '#7ee787', '#56d364', '#3fb950', '#2ea043', '#238636', '#196c2e', '#0f5323', '#033a16', '#04260f'},
    yellow  = { '#f8e3a1', '#f2cc60', '#e3b341', '#d29922', '#bb8009', '#9e6a03', '#845306', '#693e00', '#4b2900', '#341a00'},
    orange  = { '#ffdfb6', '#ffc680', '#ffa657', '#f0883e', '#db6d28', '#bd561d', '#9b4215', '#762d0a', '#5a1e02', '#3d1300'},
    red     = { '#ffdcd7', '#ffc1ba', '#ffa198', '#ff7b72', '#f85149', '#da3633', '#b62324', '#8e1519', '#67060c', '#490202'},
    purple  = { '#eddeff', '#e2c5ff', '#d2a8ff', '#be8fff', '#ab7df8', '#8957e5', '#6e40c9', '#553098', '#3c1e70', '#271052'},
    pink    = { '#ffdaec', '#ffbedd', '#ff9bce', '#f778ba', '#db61a2', '#bf4b8a', '#9e3670', '#7d2457', '#5e103e', '#42062a'},
    coral   = { '#ffddd2', '#ffc2b2', '#ffa28b', '#f78166', '#ea6045', '#cf462d', '#ac3220', '#872012', '#640d04', '#460701'},
    cyan    = { '#56d4dd', '#39c5cf' }
}
-- font size
-- default is 12
-- 14 is also fine
config.font_size = 15

config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.tab_max_width = 37

-- https://wezterm.org/config/appearance.html#defining-your-own-colors
config.color_scheme = 'Github Dark'
config.colors = {

  foreground = github_colours.text,   -- The default text color
  background = github_colours.neutral[2],   -- The default background color

  cursor_bg = github_colours.neutral[13],   -- Overrides the cell background color when the current cell is occupied by the cursor and the cursor style is set to Block
  cursor_fg = github_colours.neutral[2],   -- Overrides the text color when the current cell is occupied by the cursor
  cursor_border = github_colours.neutral[13],   -- Specifies the border color of the cursor when the cursor style is set to Block, or the color of the vertical or horizontal bar when the cursor style is set to Bar or Underline.

  selection_fg = github_colours.neutral[13],   -- the foreground color of selected text
  selection_bg = github_colours.neutral[7],   -- the background color of selected text

  -- scrollbar_thumb = '#222222',   -- The color of the scrollbar "thumb"; the portion that represents the current viewport


  -- split = '#444444',   -- The color of the split lines between panes


  ansi = {
    github_colours.neutral[7], -- 'black' base-color-neutral-6
    github_colours.red[4], -- 'maroon' base-color-red-3
    github_colours.green[4], -- 'green' base-color-green-3
    github_colours.yellow[4], -- 'olive' base-color-yellow-3
    github_colours.blue[4], -- 'navy' base-color-blue-3
    github_colours.purple[4], -- 'purple' base-color-purple-3
    github_colours.pink[4], -- 'teal' base-color-pink-3
    github_colours.neutral[13], -- 'silver' base-color-neutral-12
  },
  brights = {
    github_colours.neutral[9], -- 'grey' base-color-neutral-8
    github_colours.red[3], -- 'red' base-color-red-2
    github_colours.green[3], -- 'lime' base-color-green-2
    github_colours.yellow[3], -- 'yellow' base-color-yellow-2
    github_colours.blue[3], -- 'blue' base-color-blue-2
    github_colours.purple[3], -- 'fuchsia' base-color-purple-2
    github_colours.pink[3], -- 'aqua' base-color-pink-2
    github_colours.neutral[14], -- 'white' base-color-neutral-13
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
    background = github_colours.neutral[2],

    active_tab = {
      bg_color = github_colours.neutral[2],
      fg_color = github_colours.text,

      intensity = 'Bold', -- "Half", "Normal" or "Bold"

      underline = 'None', -- "None", "Single" or "Double"
      italic = false,
      strikethrough = false,
    },

    inactive_tab = {
      bg_color = github_colours.neutral[7],
      fg_color = github_colours.neutral[13],

      intensity = 'Normal', -- "Half", "Normal" or "Bold"

      underline = 'None', -- "None", "Single" or "Double"
      italic = true,
      strikethrough = false,
    },

    inactive_tab_hover = {
      bg_color = github_colours.neutral[9],
      fg_color = github_colours.neutral[14],

      intensity = 'Bold', -- "Half", "Normal" or "Bold"

      underline = 'None', -- "None", "Single" or "Double"
      italic = false,
      strikethrough = false,
    },

    new_tab = {
      bg_color = github_colours.neutral[2],
      fg_color = github_colours.text,

      intensity = 'Normal', -- "Half", "Normal" or "Bold"

      underline = 'None', -- "None", "Single" or "Double"
      italic = true,
      strikethrough = false,
    },

    new_tab_hover = {
      bg_color = github_colours.neutral[9],
      fg_color = github_colours.neutral[14],

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
