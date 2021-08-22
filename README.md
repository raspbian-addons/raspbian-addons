# [Raspbian Addons](http://chunky-milk.github.io/raspbian-addons/)

An APT repository for packages/software that can't be found in the RPi repositories. Fully supports 32/64bit Debian Based ARM Operating Systems.

Here are some examples of what this repository includes:

- AdoptOpenJDK 16
- VSCodium
- FreeCAD (fully working!)
- SoftEtherVPN
- ungoogled-chromium
- BalenaEtcher
- Box64
- Box86
- Conky Manager (to manage your Conky themes)
- StackEdit-nativefier
- DuckStation emulator (fast PS1 emulator)
- ClamTk
- qemu and qemu2deb (compile/package qemu into a deb!)
- RPiPlay (open source AirPlay mirror server)
- Simplenote, a note-taking application
- Alacritty Terminal (Uses the GPU for rendering!)

And more! To see a complete list, click [here](https://osdn.mirror.constant.com/storage/g/r/ra/raspbian-addons/debian/pool/).

# ***Installation/Uninstallation:***

Many mirrors of the repository are now available. Thanks to [**hmsjy2017**](https://github.com/hmsjy2017), the install script will ask you which mirror you would like to use.

To install the repository, make sure you have an Internet connection. Install Python with `sudo apt install python3`, then run this command:

```bash
wget -q https://cdn.jsdelivr.net/gh/chunky-milk/raspbian-addons@master/repo.py -O repo.py; python3 repo.py; rm repo.py
```

To ***uninstall*** the repository, execute this command, and when asked, answer '**R**'
```bash
wget -q https://cdn.jsdelivr.net/gh/chunky-milk/raspbian-addons@master/repo.sh -O repo.sh; bash repo.sh; rm repo.sh
```

### Common Issues

- "This repository does not have a Release or InRelease file."

	To fix, just uninstall the repository and then re-install it using the instructions above. The format of the repository was changed on 8/22/21, due to which this error is caused.

		(Or, if you're feeling adventurous, edit the `rpirepo.list` file in /etc/apt/sources.list.d/, and ***change the ending from `raspbian-addons/debian buster main` to `raspbian-addons/debian/ /`***)

If you're having any other issues or the methods to fix an issue listed here aren't working, be sure to open an issue report on ***this*** github repo and not on the creators of the app's repo (unless you're having an issue with a specific app).

### What is the goal of this project?

The Raspberry Pi is a great and capable little computer. But what frustrates me is how little effort the Raspberry Pi Foundation puts into their Debian package repositories. While some software does work, other software either is extremely outdated or just may not work at all. This repository aims to fix that, or to the best of my ability.

### Would you like to help?

If you'd like to help me with this, **please** contact me! Maintaining a Debian repository isn't easy work! Send me an issue report with your software request, and I can add it for you.

Current Maintainers: [**@chunky-milk**](https://github.com/chunky-milk) [**@Itai-Nelken**](https://github.com/Itai-Nelken/) [**@hmsjy2017**](https://github.com/hmsjy2017)

Old repository archive: An older backup of the repository is [here](https://archive.org/download/old-repo-archive/old-repo-archive.zip). It is fully functional and is there in case the existing repository becomes broken and unusable.
