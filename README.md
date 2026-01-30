# 🖥️ WezTerm config by Bharath

For a [WezTerm](https://wezterm.org/) installation, refer to the [documentation](https://wezterm.org/installation.html).

## Installation

### 🐧 Linux

#### From Source (Smaller)
```sh
curl https://sh.rustup.rs -sSf | sh -s
curl -LO https://github.com/wezterm/wezterm/releases/download/20240203-110809-5046fc22/wezterm-20240203-110809-5046fc22-src.tar.gz
tar -xzf wezterm-20240203-110809-5046fc22-src.tar.gz
cd wezterm-20240203-110809-5046fc22
./get-deps
cargo build --release
cargo run --release --bin wezterm -- start
```

#### From Source (Full Repo)
```sh
curl https://sh.rustup.rs -sSf | sh -s
git clone --depth=1 --branch=main --recursive https://github.com/wezterm/wezterm.git
cd wezterm
git submodule update --init --recursive
./get-deps
cargo build --release
cargo run --release --bin wezterm -- start
```

#### Arch
```sh
sudo pacman -S wezterm
```

#### Debian
```sh
sudo apt install wezterm
```

### 🪁 Windows

```powershell
winget install --id wez.wezterm --exact --source winget
```

## Configuration

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
