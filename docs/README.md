# [Raspbian Addons](http://raspbian-addons.github.io/)
![GitHub issues](https://img.shields.io/github/issues/raspbian-addons/raspbian-addons)
![GitHub pull requests](https://img.shields.io/github/issues-pr/raspbian-addons/raspbian-addons)
![GitHub contributors](https://img.shields.io/github/contributors/raspbian-addons/raspbian-addons)
![GitHub Repo stars](https://img.shields.io/github/stars/raspbian-addons/raspbian-addons?style=social)
![GitHub Repo forks](https://img.shields.io/github/forks/raspbian-addons/raspbian-addons?style=social)

Legendary APT repository for packages/software that can't be found in the RPi repositories. Fully supports 32/64bit Debian Based ARM Operating Systems.

The Raspberry Pi is a great and capable little computer. But what frustrates me is how little effort the Raspberry Pi Foundation puts into their Debian package repositories. While some software does work, other software either is extremely outdated or just may not work at all. This repository aims to fix that!

To see a complete list of included software, click [here](https://osdn.mirror.constant.com/storage/g/r/ra/raspbian-addons/debian/pool/).

### **Installation/Uninstallation:**

To install the repository, make sure you have an Internet connection. Install Python with `sudo apt install python3`, then run the following command:

```
python3 <(curl -fSsL https://cdn.jsdelivr.net/gh/raspbian-addons/scripts@master/utils/repo.py)
```
The install script will ask you which mirror you would like to use. Pick the mirror that's closest to you for the most reliable speeds.

<details>
<summary> Run a repository speed test </summary>

Testing the speed of each of the mirrors to see which one is best for you can be done with this script.

```
bash <(curl -fSsL https://cdn.jsdelivr.net/gh/raspbian-addons/scripts@master/utils/speedtest.sh)
```

</details>

<details>
<summary> Uninstalling the repository </summary>

To ***uninstall***, execute this command, and when asked, answer '**R**'
```
bash <(curl -fSsL https://cdn.jsdelivr.net/gh/raspbian-addons/scripts@master/utils/uninstall.sh)
```

</details>

### Want to learn more about Debian repositories and how they work?

You're in luck! I've written a document on how the repository is structured. Check it out [here](https://github.com/raspbian-addons/raspbian-addons/tree/master/docs/DOCUMENTATION.md)!

### Common Issues

- "This repository does not have a Release or InRelease file."

	To fix, just uninstall the repository and then re-install it using the instructions above. The format of the repository was changed on 8/22/21, due to which this error is caused. If you're interested, read more about how the repository is structured [here](https://github.com/raspbian-addons/raspbian-addons/tree/master/docs/DOCUMENTATION.md).

	(Or, if you're feeling adventurous, edit the `rpirepo.list` file in /etc/apt/sources.list.d/, and ***change the ending from `raspbian-addons/debian buster main` to `raspbian-addons/debian/ /`***)

If you're having any other issues or the methods to fix an issue listed here aren't working, be sure to open an issue report on ***this*** github repo and not on the creators of the app's repo (unless you're having an issue with a specific app).

### Would you like to help?

If you'd like to help me with this, **please** contact me! Maintaining a Debian repository isn't easy work! Send me an issue report with your software request, and I can add it for you.

Current Maintainers: [**@ryanfortner**](https://github.com/ryanfortner) [**@Itai-Nelken**](https://github.com/Itai-Nelken/) [**@hmsjy2017**](https://github.com/hmsjy2017)

Old repository archive: An older backup of the repository is [here](https://archive.org/download/old-repo-archive/old-repo-archive.zip). It is fully functional and is there in case the existing repository becomes broken and unusable.


### Special Thanks

Thanks to [fosshost](https://fosshost.org/) for providing a VPS for the repository, and to OSDN for the many [mirrors](https://github.com/raspbian-addons/mirrors)! 
