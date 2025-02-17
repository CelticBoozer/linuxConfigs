# Scripts

This directory contains scripts that allow me to automate some of my work.

- **backup-configs.sh** - copies the configuration files in .system-config-backup,
  which are not in $XDG_CONFIG but in other places like /etc. The script is
  automatically started by the pacman hook 95-backup-configs.hook. This script
  requires your customization: change **celtic** to **<your_user_name>**.
- **check-pacnew.sh** - searches for .pacnew files and reports if any are
  present. It is started automatically by the pacman hook 94-check-pacnew.hook.
- **cliphist-rofi.sh** - allows me to control clipboard history with rofi.
- **initial-installation.sh** - performs the initial installation and
  configuration of the system. Before running it, you need to copy this repo to
  the $HOME, install arch linux, git and have internet access. This script
  requires your customization: change **celtic** to **<your_user_name>**.
- **maintenance.sh** - performs some frequent maintenance tasks on my system.
  zsh alias - maint.
- **random-background.sh** - randomly changes the wallpaper every five minutes.
- **update-electron-symlinks.sh** - automatically started by the pacman hook
  93-electron.hook to create missing and remove unnecessary symlinks for each
  version of electron on the file with the necessary flags.
- **upgrade-system.sh** - updates all packages, removes unnecessary ones and
  updates all sub-modules. zsh alias - sysupg.
