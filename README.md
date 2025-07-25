# Desktop Environment Installer

A simple Bash script that automates the installation of popular Linux desktop environments across multiple package managers and distributions.

## Features

- **Multi-Desktop Support**: Install KDE Plasma, GNOME, XFCE, MATE, or Cinnamon
- **Cross-Distribution Compatibility**: Supports APT, DNF, YUM, Pacman, and Zypper package managers
- **Interactive Interface**: User-friendly menu for selecting desktop environments
- **Automatic Package Manager Detection**: Automatically detects your system's package manager
- **Safe Installation**: Uses appropriate package names for each distribution
- **Error Handling**: Validates user input and checks for supported package managers

## Supported Desktop Environments

1. **KDE Plasma** - Modern, customizable desktop with advanced features
2. **GNOME** - Clean, modern desktop with touch-friendly interface
3. **XFCE** - Lightweight, fast desktop environment
4. **MATE** - Traditional desktop environment, fork of GNOME 2
5. **Cinnamon** - Modern desktop with traditional layout

## Supported Package Managers

- **APT** (Debian/Ubuntu-based distributions)
- **DNF** (Fedora 22+ and newer Red Hat-based systems)
- **YUM** (Older Red Hat-based systems)
- **Pacman** (Arch Linux and derivatives)
- **Zypper** (openSUSE and SUSE Linux)

## Installation

### Download the Script

You can download the script directly using `curl` or `wget`:

```bash
# Using curl
curl -O https://raw.githubusercontent.com/06ergin06/deinstaller/main/script.sh

# Using wget
wget https://raw.githubusercontent.com/06ergin06/deinstaller/main/script.sh

# Or clone the entire repository
git clone https://github.com/06ergin06/deinstaller.git
cd deinstaller
```

## Usage

Make the script executable and run it:

```bash
chmod +x script.sh
./script.sh
```

### Interactive Menu

The script will present you with a menu to select your desired desktop environment:

```text
Select a Desktop Environment:
(1) Kde Plasma
(2) Gnome
(3) XFCE
(4) Mate
(5) Cinnamon
Enter a desktop environment (1-5) :
```

Simply enter the number corresponding to your choice (1-5) and press Enter.

## Package Details by Distribution

### Debian/Ubuntu (APT)

- **KDE Plasma**: `kde-plasma-desktop`
- **GNOME**: `gnome`
- **XFCE**: `xfce4`
- **MATE**: `mate-desktop-environment`
- **Cinnamon**: `cinnamon`

### Fedora (DNF)

- **KDE Plasma**: `@plasma-desktop`
- **GNOME**: `@gnome-desktop`
- **XFCE**: `@xfce4-desktop`
- **MATE**: `@mate-desktop`
- **Cinnamon**: `@cinnamon-desktop`

### CentOS/RHEL (YUM)

- **KDE Plasma**: `plasma-desktop`
- **GNOME**: `gnome-desktop`
- **XFCE**: `xfce4-desktop`
- **MATE**: `mate-desktop`
- **Cinnamon**: `cinnamon-desktop`

### Arch Linux (Pacman)

- **KDE Plasma**: `plasma`
- **GNOME**: `gnome`
- **XFCE**: `xfce4`
- **MATE**: `mate`
- **Cinnamon**: `cinnamon`

### openSUSE (Zypper)

- **KDE Plasma**: `patterns-kde-kde_plasma`
- **GNOME**: `patterns-gnome-gnome`
- **XFCE**: `xfce4`
- **MATE**: `mate-session`
- **Cinnamon**: `cinnamon`

## Sample Usage

```bash
$ ./script.sh
Select a Desktop Environment:
(1) Kde Plasma
(2) Gnome
(3) XFCE
(4) Mate
(5) Cinnamon
Enter a desktop environment (1-5) : 1
downloanding and installing...
[Package installation output...]
```

