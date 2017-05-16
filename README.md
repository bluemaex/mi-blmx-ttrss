# mi-blmx-ttrss

This repository is based on [Joyent mibe](https://github.com/joyent/mibe). Please note this repository should be build with the [mi-core-base](https://github.com/skylime/mi-core-base) mibe image.

## description

Minimal mibe image for [TT-RSS](https://tt-rss.org/). It's required to finish once the installation via web interface and follow the steps of the installer.

After creating your initial configuration in the installer, follow these steps
```
vim /opt/tt-rss/config/config.php
rm -rf /opt/tt-rss/www/install
ln -s /opt/tt-rss/config/config.php /opt/tt-rss/www/config.php
```

Then you can safely reprovision without losing the configuration.

## services

- `80/tcp`: web server
