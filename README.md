# ionics
Various salt states, mainly for convenience, and ease of setup in a Ubuntu-based
development environment.

## standalone minion setup

One quick and easy possible way to use these states, is by running salt
masterless. For a full reference see saltstack docs:

* [SALT MASTERLESS QUICKSTART](https://docs.saltstack.com/en/latest/topics/tutorials/quickstart.html)
* [STANDALONE MINION](https://docs.saltstack.com/en/latest/topics/tutorials/standalone_minion.html)

Once you're setup with salt:

```bash
$ sudo mkdir /srv/ionics
$ sudo chown --recursive `whoami`:`whoami` /srv/ionics
$ git clone <your_fork> /srv/ionics
```

Edit `pillar/common.sls`:

```bash
$ vim /srv/ionics/pillar/common.sls
```

so that `user` and `group` are set to your username (i.e.: `whomai`).

Edit `/etc/salt/minion`, so that at a minimum, it contains:

```bash
file_client: local

file_roots:
  base:
    - /srv/ionics/salt

pillar_roots:
  base:
    - /srv/ionics/pillar
```

*A minimalistic example `minion` file is provided in this repo.*
