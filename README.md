## Dotfiles

Symlink script based on [this site](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/).

To use the configuration files just follow the following steps:

Navigate to your home directory and execute the following commands.

```bash
git clone https://github.com/DailyMatters/dotfiles.git
cd ~/dotfiles
chmod +x makesymlinks.sh
./makesymlinks.sh
```

To use the `startup.sh` script, navigate to the `/dotfiles` folder and run the following commands:

```bash
chmod +x startup.sh
sudo ./startup.sh
```
Some of the commands on the script might need a confirmation step, so don't leave the machine unnatended. I will be working on that on a near future.

This script will also run the `spotify.sh` and the `gitAlias.sh` scripts that will install both Spotify and my git alias. Of Course you can run both this scripts separately by going:

### spotify.sh
```bash
chmod +x spotify.sh
sudo ./spotify.sh
```

### gitAlias.sh
```bash
chmod +x gitAlias.sh
sudo ./gitAlias.sh
```
This will install all the Git Alias defined on the file. These are my alias, feel free to use them if you want to.

Enjoy ;)
