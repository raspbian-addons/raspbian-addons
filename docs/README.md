<p align="center">
    <img src="https://cdn.jsdelivr.net/gh/ryanfortner/ryanfortner@main/test5.png" alt="Raspbian-Addons logo">
</p>

<p align="center">
    <img src="https://ko-fi.com/img/githubbutton_sm.svg" href="https://ko-fi.com/D1D476WQM" alt="ko-fi">

<p align="center">Legendary extra APT repository for Raspberry Pies, containing open-source ARM software. Supports both 32 and 64 bit Debian-based operating systems.
<p align="center">
  <a href="https://docs.raspbian-addons.org/package-list">
    View package list</a>
  |
  <a href="https://docs.raspbian-addons.org">
    View docs</a>
  |
  <a href="https://github.com/raspbian-addons/raspbian-addons/issues/new?assignees=&labels=bug&template=bug_report.md&title=%5Bbug%5D%3A+">
    Report an error</a>
  |
  <a href="https://github.com/raspbian-addons/raspbian-addons/issues/new?assignees=&labels=package+submission&template=package_submission.yaml&title=%5BPackage+submission%5D%3A+">
    Submit a package</a>

<p align="center">
    <img src="https://img.shields.io/github/stars/raspbian-addons/raspbian-addons" alt="stars">
    <img src="https://img.shields.io/github/forks/raspbian-addons/raspbian-addons" alt="forks">
    <img src="https://img.shields.io/github/contributors/raspbian-addons/raspbian-addons" alt="contributors">
    <img src="https://img.shields.io/github/issues-pr/raspbian-addons/raspbian-addons" alt="prs">
    <img src="https://img.shields.io/github/issues/raspbian-addons/raspbian-addons" alt="issues">
    <img src="https://img.shields.io/github/license/raspbian-addons/raspbian-addons" alt="license">

The Raspberry Pi is a great and capable little computer. But what frustrates me is how little effort the Raspberry Pi Foundation puts into their Debian package repositories. While some software does work, other software either is extremely outdated or just may not work at all. This repository aims to fix that!

To see a complete list of included software, click [here](https://apt.raspbian-addons.org/debian/pool/).

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

[Running a repository speed test](https://docs.raspbian-addons.org/extras/speed-test/)

### Want to learn more about Debian repositories?

Click [here](https://docs.raspbian-addons.org/about/how-does-it-work/).

### Troubleshooting

See the [docs](https://docs.raspbian-addons.org/troubleshooting/common-issues/). If necessary, open an issue on the main repository.

### Would you like to help?

If you'd like to help me with this, contact me! Maintaining a Debian repository isn't easy work! Send me an issue report with your software request, and I can add it for you.

Current Maintainers: [**@ryanfortner**](https://github.com/ryanfortner) [**@hmsjy2017**](https://github.com/hmsjy2017) [**@Itai-Nelken**](https://github.com/Itai-Nelken/)

Old repository archive: An older backup of the repository is [here](https://archive.org/download/old-repo-archive/old-repo-archive.zip). It is fully functional and is there in case the existing repository becomes broken and unusable.

### Special Thanks

Thanks to [Fosshost](https://fosshost.org/) for providing VPS services for the repository, and to OSDN and SourceForge for the [mirrors](https://github.com/raspbian-addons/mirrors)! Raspbian Addons would not be possible without these services.
