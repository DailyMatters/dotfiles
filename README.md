## Dotfiles

Symlink script based on [this site](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/).

To use the configuration files just follow the following steps:

Navigate to your home directory and execute the following commands.

```bash
git clone git://github.com/dailymatters/dotfiles.git
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

Enjoy ;)
