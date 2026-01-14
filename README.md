# WezTerm config by Bharath

##  Installation

### Linux

```sh
# make a backup of current config
mv $HOME/.wezterm.lua{,.bak}
mv $HOME/.config/wezterm{,.bak}

# get the new config
mkdir -p $HOME/.config
git clone https://github.com/bharathulaganathan/wezterm.git
mv wezterm $HOME/.config
```

### Windows

```ps
# make a backup of current config
if (Test-Path "$env:USERPROFILE\.wezterm.lua") {
    Move-Item "$env:USERPROFILE\.wezterm.lua" "$env:USERPROFILE\.wezterm.lua.bak" -Force
}
if (Test-Path "$env:USERPROFILE\.config\wezterm") {
    Move-Item "$env:USERPROFILE\.config\wezterm" "$env:USERPROFILE\.config\wezterm.bak" -Force
}

# Get the new config
New-Item -ItemType Directory -Path "$env:USERPROFILE\.config" -Force
git clone https://github.com/bharathulaganathan/wezterm.git
Move-Item "wezterm" "$env:USERPROFILE\.config" -Force
```