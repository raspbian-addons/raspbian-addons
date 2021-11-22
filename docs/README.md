<p align="center">
    <img src="https://cdn.jsdelivr.net/gh/ryanfortner/ryanfortner@main/test5.png" alt="Raspbian-Addons logo">
</p>

![GitHub issues](https://img.shields.io/github/issues/raspbian-addons/raspbian-addons)
![GitHub pull requests](https://img.shields.io/github/issues-pr/raspbian-addons/raspbian-addons)
![GitHub contributors](https://img.shields.io/github/contributors/raspbian-addons/raspbian-addons)
![GitHub Repo stars](https://img.shields.io/github/stars/raspbian-addons/raspbian-addons?style=social)
![GitHub Repo forks](https://img.shields.io/github/forks/raspbian-addons/raspbian-addons?style=social)
[Docs](https://docs.raspbian-addons.org)

Legendary APT repository for packages/software that can't be found in the RPi repositories. Fully supports 32/64bit Debian Based ARM Operating Systems.

The Raspberry Pi is a great and capable little computer. But what frustrates me is how little effort the Raspberry Pi Foundation puts into their Debian package repositories. While some software does work, other software either is extremely outdated or just may not work at all. This repository aims to fix that!

To see a complete list of included software, click [here](https://osdn.mirror.constant.com/storage/g/r/ra/raspbian-addons/debian/pool/).

### **Installation/Uninstallation:**

To install the repository, make sure you have an Internet connection. Install Python with `sudo apt install python3`, then run the following command:

```
python3 <(curl -fSsL https://cdn.jsdelivr.net/gh/raspbian-addons/scripts@master/utils/repo.py)
```
The install script will ask you which mirror you would like to use. Pick the mirror that's closest to you for the most reliable speeds. Please note that the main mirror (apt.raspbian-addons.org) may be the most up-to-date mirror.

<details>
<summary> Uninstalling the repository </summary>

To ***uninstall***, execute this command. 
```
bash <(curl -fSsL https://cdn.jsdelivr.net/gh/raspbian-addons/scripts@master/utils/uninstall.sh)
```

</details>

[Running a repository speed test](http://docs.raspbian-addons.org/#running-a-repository-speed-test)

### Want to learn more about Debian repositories?

Click [here](https://docs.raspbian-addons.org#how-do-apt-repositories-work).

### Troubleshooting

See the [docs](http://docs.raspbian-addons.org/#common-issues). If necessary, open an issue on the main repository.

### Would you like to help?

If you'd like to help me with this, **please** contact me! Maintaining a Debian repository isn't easy work! Send me an issue report with your software request, and I can add it for you.

Current Maintainers: [**@ryanfortner**](https://github.com/ryanfortner) [**@Itai-Nelken**](https://github.com/Itai-Nelken/) [**@hmsjy2017**](https://github.com/hmsjy2017)

Old repository archive: An older backup of the repository is [here](https://archive.org/download/old-repo-archive/old-repo-archive.zip). It is fully functional and is there in case the existing repository becomes broken and unusable.


### Special Thanks

Thanks to [Fosshost](https://fosshost.org/) for providing VPS services for the repository, and to OSDN and SourceForge for the [mirrors](https://github.com/raspbian-addons/mirrors)! Raspbian Addons would not be possible without these services.
