wifi-cream
============
# NOT DONE
Automate the compilation and installation of the tl-wn725n driver for rasberry-pi
Almost all of the scripts are from other sources.. thanks to enekochan[http://tech.enekochan.com/2013/05/29/compile-and-install-driver-for-tp-link-tl-wn725n-version-2-in-raspbian/]

```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git

git clone https://github.com/jb-san/wifi-cream.git
cd wifi-cream
./install.sh
```
wait for it to compile and install, you will then be asked a bunch of questions regarding your wifi, you can skip this if you want to configure /wpa_suppliment by hand later..
although why would you..
