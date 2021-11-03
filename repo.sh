#!/bin/bash
# Written by Ryan Fortner, with assistance from Itai Nelken

function error {
  echo -e "\e[91m$1\e[39m"
  exit 1
}

function ctrl_c() {
  break &>/dev/null
  rm repo.sh &>/dev/null
  exit 1
}
#make the ctrl_c function run if ctrl+c is pressed
trap "ctrl_c" 2

HOST_ARCH=$(uname -m)
if [ "${HOST_ARCH}" != "armv7l" ] && [ "${HOST_ARCH}" != "aarch64" ]; then
  error "This script is only intended to run on ARM devices."
fi

PI_MODEL=$(grep ^Model /proc/cpuinfo  | cut -d':' -f2- | sed 's/ R/R/')
if [[ "${PI_MODEL}" == *"Raspberry Pi"* ]]; then
  echo "Running on ${PI_MODEL}"
else
  error "This is not a Raspberry Pi. Quitting!"
fi

function check_internet() {
  printf "checking if you are online..."
  wget -q --spider http://github.com
  if [ $? -eq 0 ]; then
    echo "Online. Continuing."
  else
    error "Offline. Go connect to the internet then run the script again."
  fi
}

function addrepo() {
  echo "You chose to add the repository. To cancel click ctrl+c in the next 5 seconds."
  sleep 5
  printf "Downloading package list..."
  sudo wget -q https://raw.githubusercontent.com/raspbian-addons/raspbian-addons/master/rpirepo.list -O /etc/apt/sources.list.d/rpirepo.list || error "Failed to download rpirepo.list!"
  #sudo wget -q http://download.tuxfamily.org/rpiaddons/rpi_addons.list -O /etc/apt/sources.list.d/rpi_addons.list || error "Failed to download rpi_addons.list!"
  echo "done"
  printf "Adding GPG key..."
  wget -qO- https://raw.githubusercontent.com/raspbian-addons/raspbian-addons/master/KEY.gpg | sudo apt-key add - || error "Failed to add GPG key!"
  echo "done"
  echo "Updating APT lists..."
  sudo apt update || error "Failed to update APT lists!"
}

function removerepo() {
  echo "You chose to remove the repository. To cancel click ctrl+c in the next 5 seconds."
  sleep 5
  printf "Removing rpirepo.list..."
  sudo rm /etc/apt/sources.list.d/rpirepo.list || error "Failed to remove rpirepo.list!"
  #sudo rm /etc/apt/sources.list.d/rpi_addons.list || error "Failed to remove rpi_addons.list!"
  echo "done"
  printf "Removing GPG key..."
  sudo apt-key remove "232E 6F29 77AB D48E 5A9F  AD03 9ACB 4E70 D84B FD24" || error "Failed to remove GPG key!"
  echo "Updating APT lists..."
  sudo apt update || error "Failed to update APT lists!"
}

check_internet

printf "(i)nstall or (r)emove raspbian-addons repository "
while true; do
  read -p "(i/r)? " choice
  case "$choice" in 
    i|I ) addrepo && break ;;
    r|R ) removerepo && break ;;
    * ) echo "Invalid input!";;
  esac
done
echo "Bye!"
