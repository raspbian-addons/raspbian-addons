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

And more!

### To install:
```
sudo wget https://chunky-milk.github.io/raspbian-addons/rpirepo.list -O /etc/apt/sources.list.d/rpirepo.list

wget -qO- https://chunky-milk.github.io/raspbian-addons/KEY.gpg | sudo apt-key add -

sudo apt update
```
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

### Changelog
Please note that not *all* changes will be documented here. Only major changes will be documented.

**03/21/21**
- Added Changelog
- Added arm64 support
- Remove electron-discord-webapp, as it is now available [here](https://itai-nelken.github.io/electron-discord-webapp_debian-repo/index.html)
- Added cursor themes package (installable with `sudo apt-get update && sudo apt-get install fancy-cursor-themes`)
