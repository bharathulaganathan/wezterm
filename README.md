# 🖥️ WezTerm config by Bharath

For a [WezTerm](https://wezterm.org/) installation, refer to the [documentation](https://wezterm.org/installation.html).

## Installation

### 🐧 Linux

```sh
# backup current config
mv $HOME/.wezterm.lua{,.bak}
mv $HOME/.config/wezterm{,.bak}

# get new config
git clone https://github.com/bharathulaganathan/wezterm $HOME/.config/wezterm
```

### 🪁 Windows

```powershell
# backup current config
Move-Item $env:USERPROFILE\.wezterm.lua $env:USERPROFILE\.wezterm.lua.bak
Move-Item $env:USERPROFILE\.config\wezterm $env:USERPROFILE\.config\wezterm.bak

# get new config
git clone https://github.com/bharathulaganathan/wezterm $env:USERPROFILE\.config\wezterm
```

