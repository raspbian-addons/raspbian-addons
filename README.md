# [Raspbian Addons](http://chunky-milk.github.io/raspbian-addons/)
This repository hosts extra software for Raspberry Pi. It supports armhf (32-bit) and arm64 (64-bit) architectures. However, there is currently *more 32-bit software* than 64-bit software.

Here are some examples of what this repository includes:
- BalenaEtcher [compiled by Itai Nelken](http://github.com/Itai-Nelken/Etcher-arm-32-64)
- Conky Manager (to manage your Conky themes)
- Stacer
- ClamTk
- qemu2deb by [Itai Nelken](https://github.com/Itai-Nelken/qemu2deb) (a script to compile and package QEMU)
- PPSSPP emulator
- DuckStation emulator
- StackEdit
- RPiPlay (open source AirPlay mirror server)
- Super Productivity
- Simplenote-electron, a note-taking app
- Alacritty Terminal (Uses the GPU for rendering!)

And more! To see a complete list, scroll down.

### To install:
Installation instructions [here](https://chunky-milk.github.io/raspbian-addons/index.html).


### To remove:
#### WARNING: first uninstall all the apps from the repo before removing it, otherwise you might break `apt`!
```
sudo rm /etc/apt/sources.list.d/rpirepo.list
sudo apt-key remove "232E 6F29 77AB D48E 5A9F  AD03 9ACB 4E70 D84B FD24"
sudo apt update
```

### Having issues?
If you're having issues with this repository, be sure to open an issue report on ***this*** github repo and not on the creators of the app's repo (unless you're having an issue with a specific app).

### What is the goal of this project?
The Raspberry Pi is a great and capable little computer. But what frustrates me is how little effort the Raspberry Pi Foundation puts into their Debian package repositories. While some software does work, other software either is extremely outdated or just may not work at all. This repository aims to fix that, or to the best of my ability.

### Would you like to help?
If you'd like to help me with this, **please** contact me! Maintaining a Debian repository isn't easy work! Send me an issue report with your software request, and I can add it for you. Just make sure the software is installable on at least 32-bit, and works on the Raspberry Pi 4.

Current Maintainers: [**@chunky-milk**](https://github.com/chunky-milk) [**@Itai-Nelken**](https://github.com/Itai-Nelken/)

### Complete list of software you can install with this repository
- [Alacritty](https://github.com/alacritty/alacritty)
- [balenaEtcher](https://github.com/Itai-Nelken/Etcher-arm-32-64)
- [BleachBit](https://github.com/bleachbit/bleachbit)
- [Browsh](https://github.com/browsh-org/browsh)
- [cbonsai](https://gitlab.com/jallbrit/cbonsai)
- [cfetch](https://github.com/clieg/cfetch.git)
- [clamtk](https://github.com/dave-theunsub/clamtk)
- [Lightpad](https://github.com/libredeb/lightpad)
- [Conky Manager](https://github.com/teejee2008/conky-manager)
- [duf](https://github.com/muesli/duf)
- [Fancy Cursor Themes](https://github.com/chunky-milk/cursor-themes)
- [FreeTube](https://github.com/FreeTubeApp/FreeTube)
- [Stacer](https://github.com/oguzhaninan/Stacer)
- [glmark2](https://github.com/glmark2/glmark2)
- [Angry IP Scanner](https://github.com/angryip/ipscan)
- [KeePassX](https://github.com/keepassx/keepassx)
- [qemu2deb](https://github.com/Itai-Nelken/qemu2deb)
- [Remarkable](https://github.com/jamiemcg/Remarkable)
- [RPiPlay](https://github.com/FD-/RPiPlay)
- [Shellcheck](https://github.com/koalaman/shellcheck)
- [Sonic Pi](https://github.com/sonic-pi-net/sonic-pi)
- [SysMonTask](https://github.com/KrispyCamel4u/SysMonTask)
- [Timeshift](https://github.com/teejee2008/timeshift)
- [thunar-sendto-clamtk](https://github.com/dave-theunsub/thunar-sendto-clamtk)
- [vkmark](https://github.com/vkmark/vkmark)
- [VeraCrypt](https://sourceforge.net/projects/veracrypt/)
- [DuckStation](https://github.com/stenzek/duckstation)
- [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- [StackEdit](https://github.com/benweet/stackedit)
- [Super Productivity](https://github.com/johannesjo/super-productivity)
