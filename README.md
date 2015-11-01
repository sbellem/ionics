# ionics
Various salt states, mainly for convenience, and ease of setup in a Ubuntu-
based development environment.

## standalone minion setup

One quick and easy possible way to use these states, is by running salt
masterless. For a full reference see saltstack docs:

* [SALT MASTERLESS QUICKSTART](https://docs.saltstack.com/en/latest/topics/tutorials/quickstart.html)
* [STANDALONE MINION](https://docs.saltstack.com/en/latest/topics/tutorials/standalone_minion.html)

Note that you may have to allow pip based installs when you run
install_salt.sh, i.e. include the -P flag:

```bash
$ sudo sh install_salt.sh -P
```

Once you're setup with salt:

```bash
$ sudo mkdir /srv/ionics
$ sudo chown -R `id -un`:`id -gn` ionics
$ git clone <your_fork> /srv/ionics
```

Edit `/etc/salt/minion`, so that at a minimum, it has similar settings as
those in the minimalistic example [minion](minion) file provided in this repo.

Pay attention to the `grains` setting, such so that `user` and `group` are set
to your user id name and group name (i.e.: `id -un` and `id -gn`).

Once set, you can check that the grains are porperly set:

```bash
$ sudo salt-call grains.get user
local:
    # same as output of id -un

$ sudo salt-call grains.get group
local:
    # same as output of id -gn
```


To apply the states:

```bash
$ sudo salt-call --local -l debug state.highstate
```
